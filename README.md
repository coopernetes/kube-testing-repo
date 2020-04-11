# bitnami/charts
https://github.com/bitnami/charts/pull/2258

## Results

### azure provider

```bash
$ ./run.sh 
eab6bf4f cleanup validation & helpers
Error: uninstall: Release not loaded: external-dns: release: not found
namespace/external-dns configured
provider=azure
All Azure values set
NAME: external-dns
LAST DEPLOYED: Sat Apr 11 15:08:05 2020
NAMESPACE: external-dns
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
** Please be patient while the chart is being deployed **

To verify that external-dns has started, run:

  kubectl --namespace=external-dns get pods -l "app.kubernetes.io/name=external-dns,app.kubernetes.io/instance=external-dns"
deployment.apps/nginx-deployment created
Waiting for external-dns logs, look for creation of DNS record and exit with Ctrl+C...
pod/external-dns-845f44c868-xst29 condition met
service/nginx created
NAME    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
nginx   ClusterIP   10.96.224.90   <none>        80/TCP    0s
time="2020-04-11T19:08:07Z" level=info msg="Created Kubernetes client https://10.96.0.1:443"
time="2020-04-11T19:08:09Z" level=info msg="Using client_id+client_secret to retrieve access token for Azure API."
time="2020-04-11T19:08:09Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:08:10Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:08:10Z" level=debug msg="Retrieving Azure DNS records for zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:08:10Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:08:10Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:08:10Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:08:10Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:08:10Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:08:24Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:08:24Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:08:24Z" level=debug msg="Retrieving Azure DNS records for zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:08:24Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:08:24Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:08:24Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:08:24Z" level=debug msg="Endpoints generated from service: default/nginx: [nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com 0 IN A  10.96.224.90 []]"
time="2020-04-11T19:08:24Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:08:25Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:08:25Z" level=info msg="Updating A record named 'nginx' to '10.96.224.90' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:08:25Z" level=info msg="Updating TXT record named 'nginx' to '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
^Cservice "nginx" deleted
Wait 30 seconds for record to be deleted
release "external-dns" uninstalled
Wait 30 seconds for helm to uninstall external-dns
provider=azure
secretName set
secret/azure-external-dns-secret configured
NAME: external-dns
LAST DEPLOYED: Sat Apr 11 15:09:32 2020
NAMESPACE: external-dns
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
** Please be patient while the chart is being deployed **

To verify that external-dns has started, run:

  kubectl --namespace=external-dns get pods -l "app.kubernetes.io/name=external-dns,app.kubernetes.io/instance=external-dns"
Tailing external-dns logs, wait for creation of DNS record and exit with Ctrl+C...
pod/external-dns-9f8fdccc7-chz66 condition met
service/nginx created
NAME    TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
nginx   ClusterIP   10.96.228.37   <none>        80/TCP    0s
time="2020-04-11T19:09:35Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:09:36Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:09:36Z" level=debug msg="Retrieving Azure DNS records for zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:09:36Z" level=debug msg="Found A record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '10.96.224.90'."
time="2020-04-11T19:09:36Z" level=debug msg="Found TXT record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"'."
time="2020-04-11T19:09:36Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:09:36Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:09:36Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:09:36Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:09:37Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:09:50Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:09:50Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:09:50Z" level=debug msg="Retrieving Azure DNS records for zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:09:50Z" level=debug msg="Found A record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '10.96.224.90'."
time="2020-04-11T19:09:50Z" level=debug msg="Found TXT record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"'."
time="2020-04-11T19:09:50Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:09:50Z" level=debug msg="Endpoints generated from service: default/nginx: [nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com 0 IN A  10.96.228.37 []]"
time="2020-04-11T19:09:50Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:09:50Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:09:50Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:09:51Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:09:51Z" level=info msg="Deleting A record named 'nginx' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:09:51Z" level=info msg="Deleting TXT record named 'nginx' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:09:52Z" level=info msg="Updating A record named 'nginx' to '10.96.228.37' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:09:52Z" level=info msg="Updating TXT record named 'nginx' to '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"' for Azure DNS zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:10:05Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:10:05Z" level=debug msg="Found 1 Azure DNS zone(s)."
time="2020-04-11T19:10:05Z" level=debug msg="Retrieving Azure DNS records for zone '9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com'."
time="2020-04-11T19:10:06Z" level=debug msg="Found A record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '10.96.228.37'."
time="2020-04-11T19:10:06Z" level=debug msg="Found TXT record for 'nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com' with target '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"'."
time="2020-04-11T19:10:06Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:10:06Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:10:06Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:10:06Z" level=debug msg="Endpoints generated from service: default/nginx: [nginx.9def03aa-041d-4a55-885f-4f9ceffbfc80.example.com 0 IN A  10.96.228.37 []]"
time="2020-04-11T19:10:06Z" level=debug msg="Retrieving Azure DNS zones for resource group: azure-dns-rg."
time="2020-04-11T19:10:06Z" level=debug msg="Found 1 Azure DNS zone(s)."
^Cservice "nginx" deleted
Wait 30 seconds for record to be deleted
deployment.apps "nginx-deployment" deleted
release "external-dns" uninstalled
Done!
```

### azure-private-dns provider

Helm Dry Run with new secret keys in Deployment:

```yaml
# Source: external-dns/templates/secret.yaml
apiVersion: v1
kind: Secret
metadata:
  name: external-dns
  labels: 
    app.kubernetes.io/name: external-dns
    helm.sh/chart: external-dns-2.20.12
    app.kubernetes.io/instance: external-dns
    app.kubernetes.io/managed-by: Helm
type: Opaque
data:
  azure_aad_client_id: "..."
  azure_aad_client_secret: "..."
---
# Source: external-dns/templates/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: external-dns
  labels: 
    app.kubernetes.io/name: external-dns
    helm.sh/chart: external-dns-2.20.12
    app.kubernetes.io/instance: external-dns
    app.kubernetes.io/managed-by: Helm
spec:
  replicas: 1
  selector:
    matchLabels: 
      app.kubernetes.io/name: external-dns
      app.kubernetes.io/instance: external-dns
  template:
    metadata:
      labels: 
        app.kubernetes.io/name: external-dns
        helm.sh/chart: external-dns-2.20.12
        app.kubernetes.io/instance: external-dns
        app.kubernetes.io/managed-by: Helm
      annotations:
        checksum/secret: 5cd6b9180996c3eab03a7ff4d01fe5dd2a634a64964e6c66f438abb5f39d2d62
    spec:      
      securityContext: 
        fsGroup: 1001
        runAsUser: 1001
      serviceAccountName: external-dns
      containers:
        - name: external-dns
          image: "docker.io/bitnami/external-dns:0.7.1-debian-10-r2"
          imagePullPolicy: "IfNotPresent"
          args:
            # Generic arguments
            - --log-level=info
            - --log-format=text
            - --policy=upsert-only
            - --provider=azure-private-dns
            - --registry=txt
            - --interval=1m
            - --source=service
            - --source=ingress
            # Azure Arguments
            - --azure-resource-group=azure-private-dns-rg
            - --azure-subscription-id=...
          env:
            # Azure Private DNS variables
            - name: AZURE_TENANT_ID
              value: "..."
            - name: AZURE_CLIENT_SECRET
              valueFrom:
                secretKeyRef:
                  name: external-dns
                  key: azure_aad_client_secret
            - name: AZURE_CLIENT_ID
              valueFrom:
                secretKeyRef:
                  name: external-dns
                  key: azure_aad_client_id
          ports:
            - name: http
              containerPort: 7979
          readinessProbe: 
            failureThreshold: 6
            httpGet:
              path: /healthz
              port: http
            initialDelaySeconds: 5
            periodSeconds: 10
            successThreshold: 1
            timeoutSeconds: 5
          livenessProbe: 
            failureThreshold: 2
            httpGet:
              path: /healthz
              port: http
            initialDelaySeconds: 10
            periodSeconds: 10
            successThreshold: 1
            timeoutSeconds: 5
          volumeMounts:
      volumes:
```


```bash
$ ./run.sh 
eab6bf4f cleanup validation & helpers
Error: uninstall: Release not loaded: external-dns: release: not found
namespace/external-dns configured
provider=azure-private-dns
All Azure values set
NAME: external-dns
LAST DEPLOYED: Sat Apr 11 15:18:06 2020
NAMESPACE: external-dns
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
** Please be patient while the chart is being deployed **

To verify that external-dns has started, run:

  kubectl --namespace=external-dns get pods -l "app.kubernetes.io/name=external-dns,app.kubernetes.io/instance=external-dns"
deployment.apps/nginx-deployment created
Waiting for external-dns logs, look for creation of DNS record and exit with Ctrl+C...
pod/external-dns-6cfdbc5cfd-js2tt condition met
service/nginx created
NAME    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
nginx   ClusterIP   10.96.253.163   <none>        80/TCP    0s
time="2020-04-11T19:18:10Z" level=debug msg="Returning 0 Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:18:10Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:18:10Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:18:10Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:18:10Z" level=debug msg="Received 0 changes to process"
time="2020-04-11T19:18:10Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:18:11Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:18:11Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:18:11Z" level=debug msg="Records to be deleted: 0"
time="2020-04-11T19:18:11Z" level=debug msg="Records to be updated: 0"
time="2020-04-11T19:18:24Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:18:24Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:18:24Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:18:24Z" level=debug msg="Retrieving Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:18:24Z" level=debug msg="Retrieving Azure Private DNS Records for zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
time="2020-04-11T19:18:24Z" level=debug msg="Failed to extract targets for 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com' with type 'SOA'."
time="2020-04-11T19:18:24Z" level=debug msg="Returning 0 Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:18:24Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:18:24Z" level=debug msg="Endpoints generated from service: default/nginx: [nginx.ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com 0 IN A  10.96.253.163 []]"
time="2020-04-11T19:18:24Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:18:24Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:18:24Z" level=debug msg="Received 2 changes to process"
time="2020-04-11T19:18:24Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:18:24Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:18:24Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:18:24Z" level=debug msg="Records to be deleted: 0"
time="2020-04-11T19:18:24Z" level=debug msg="Records to be updated: 1"
time="2020-04-11T19:18:24Z" level=info msg="Updating A record named 'nginx' to '10.96.253.163' for Azure Private DNS zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
time="2020-04-11T19:18:25Z" level=info msg="Updating TXT record named 'nginx' to '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"' for Azure Private DNS zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
^Cservice "nginx" deleted
Wait 30 seconds for record to be deleted
release "external-dns" uninstalled
Wait 30 seconds for helm to uninstall external-dns
provider=azure-private-dns
secretName set
secret/azure-external-dns-secret configured
NAME: external-dns
LAST DEPLOYED: Sat Apr 11 15:19:30 2020
NAMESPACE: external-dns
STATUS: deployed
REVISION: 1
TEST SUITE: None
NOTES:
** Please be patient while the chart is being deployed **

To verify that external-dns has started, run:

  kubectl --namespace=external-dns get pods -l "app.kubernetes.io/name=external-dns,app.kubernetes.io/instance=external-dns"
Tailing external-dns logs, wait for creation of DNS record and exit with Ctrl+C...
pod/external-dns-b55474d4b-8wpbn condition met
service/nginx created
NAME    TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
nginx   ClusterIP   10.96.155.108   <none>        80/TCP    0s
time="2020-04-11T19:19:35Z" level=debug msg="Returning 0 Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:19:35Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:19:35Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:19:35Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:19:35Z" level=debug msg="Received 0 changes to process"
time="2020-04-11T19:19:35Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:19:35Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:19:35Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:19:35Z" level=debug msg="Records to be deleted: 0"
time="2020-04-11T19:19:35Z" level=debug msg="Records to be updated: 0"
time="2020-04-11T19:19:49Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:19:49Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:19:49Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:19:49Z" level=debug msg="Retrieving Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:19:49Z" level=debug msg="Retrieving Azure Private DNS Records for zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
time="2020-04-11T19:19:49Z" level=debug msg="Failed to extract targets for 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com' with type 'SOA'."
time="2020-04-11T19:19:49Z" level=debug msg="Returning 0 Azure Private DNS Records for resource group 'azure-private-dns-rg'"
time="2020-04-11T19:19:49Z" level=debug msg="No endpoints could be generated from service kube-system/kube-dns"
time="2020-04-11T19:19:49Z" level=debug msg="No endpoints could be generated from service external-dns/external-dns"
time="2020-04-11T19:19:49Z" level=debug msg="No endpoints could be generated from service default/kubernetes"
time="2020-04-11T19:19:49Z" level=debug msg="Endpoints generated from service: default/nginx: [nginx.ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com 0 IN A  10.96.155.108 []]"
time="2020-04-11T19:19:49Z" level=debug msg="Received 2 changes to process"
time="2020-04-11T19:19:49Z" level=debug msg="Retrieving Azure Private DNS zones for Resource Group 'azure-private-dns-rg'"
time="2020-04-11T19:19:49Z" level=debug msg="Validating Zone: ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com"
time="2020-04-11T19:19:49Z" level=debug msg="Found 1 Azure Private DNS zone(s)."
time="2020-04-11T19:19:49Z" level=debug msg="Records to be deleted: 0"
time="2020-04-11T19:19:49Z" level=debug msg="Records to be updated: 1"
time="2020-04-11T19:19:49Z" level=info msg="Updating A record named 'nginx' to '10.96.155.108' for Azure Private DNS zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
time="2020-04-11T19:19:50Z" level=info msg="Updating TXT record named 'nginx' to '\"heritage=external-dns,external-dns/owner=default,external-dns/resource=service/default/nginx\"' for Azure Private DNS zone 'ab8ab5fd-fef5-48d2-b7ed-7e82799b99d4.example.com'."
^Cservice "nginx" deleted
Wait 30 seconds for record to be deleted
deployment.apps "nginx-deployment" deleted
release "external-dns" uninstalled
Done!
```