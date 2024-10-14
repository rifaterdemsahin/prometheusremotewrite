
Before installing Prometheus, you need to create a namespace for it. Use the following command to create a namespace called `monitoring`:

```sh
kubectl create namespace monitoringoctober14
```
```


 helm install my-release oci://registry-1.docker.io/bitnamicharts/thanos -n monitoringoctober14```markdown
## Namespace Creation
