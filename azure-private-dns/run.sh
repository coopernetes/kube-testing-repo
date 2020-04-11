#!/usr/bin/env bash
exit_from_log=0
function exit_log() {
    let exit_from_log++
    if [[ $exit_from_log -ge 3 ]]; then
        exit
    fi
}
trap exit_log INT

export AAD_CLIENT_ID=$(cat sp.json | jq -r '.appId')
export AAD_CLIENT_SECRET=$(cat sp.json | jq -r '.password')
export TENANT_ID=$(cat azure.json | jq -r '.tenantId')
export SUBSCRIPTION_ID=$(cat azure.json | jq -r '.subscriptionId')
export RESOURCE_GROUP=$(cat azure.json | jq -r '.resourceGroup')
export HELM_NAMESPACE="external-dns"
_nginx_svc="private-dns"

echo "$(cd ~/code/bitnami-charts; git log -1 --oneline)"

helm delete external-dns
kubectl create namespace external-dns --dry-run -o yaml | kubectl apply -f -

echo "provider=azure-private-dns"
echo "All Azure values set"
cat values-private-dns.yaml | envsubst | helm install external-dns ~/code/bitnami-charts/bitnami/external-dns \
    --namespace external-dns \
    --set publishInternalServices=true \
    --set logLevel=debug \
    --set interval=15s \
    --values -

kubectl apply -f ../nginx-deploy.yaml

echo "Waiting for external-dns logs, look for creation of DNS record and exit with Ctrl+C..."
kubectl --namespace external-dns wait --for=condition=Ready pod -l app.kubernetes.io/name=external-dns
kubectl apply -f ../nginx-svc-${_nginx_svc}.yaml
kubectl get svc nginx
kubectl --namespace external-dns logs -l app.kubernetes.io/name=external-dns -f

kubectl delete svc -l app=nginx
echo "Wait 30 seconds for record to be deleted"
sleep 30

helm delete external-dns
echo "Wait 30 seconds for helm to uninstall external-dns"
sleep 30

echo "provider=azure-private-dns"
echo "secretName set"
kubectl --namespace external-dns create secret generic azure-external-dns-secret \
    --from-literal=azure_aad_client_id=${AAD_CLIENT_ID} \
    --from-literal=azure_aad_client_secret=${AAD_CLIENT_SECRET} --dry-run -o yaml | kubectl apply -f -

cat values-private-dns-secretname.yaml | envsubst | helm install external-dns ~/code/bitnami-charts/bitnami/external-dns \
    --namespace external-dns \
    --set publishInternalServices=true \
    --set logLevel=debug \
    --set interval=15s \
    --values -


echo "Tailing external-dns logs, wait for creation of DNS record and exit with Ctrl+C..."
kubectl --namespace external-dns wait --for=condition=Ready pod -l app.kubernetes.io/name=external-dns
kubectl apply -f ../nginx-svc-${_nginx_svc}.yaml
kubectl get svc nginx
kubectl --namespace external-dns logs -l app.kubernetes.io/name=external-dns -f

kubectl delete svc -l app=nginx
echo "Wait 30 seconds for record to be deleted"
sleep 30
kubectl delete deploy -l app=nginx
helm delete external-dns

echo "Done!"
