Here is the markdown format with each command inside separate bash boxes:

```bash
# Create Namespace for Monitoring
kubectl create namespace monitoring
kubectl delete namespace monitoring
```

```bash
# Install Prometheus Operator CustomResourceDefinitions (CRDs)
kubectl apply -f ./prometheus-operator-crds/
```

```bash
# Apply the custom resource definitions and deploy the Prometheus Operator recursively
kubectl apply -R -f prometheus-operator/
```

```bash
# Deploy Prometheus and Thanos components
kubectl apply -f prometheus
```

```bash
# Check Pods Going Online
kubectl get pods -n monitoring
```

```bash
# Check Logs for Prometheus
kubectl logs -l app.kubernetes.io/name=prometheus -n monitoring -f
```

```bash
# Get Services in the Monitoring Namespace
kubectl get svc -n monitoring
```

```bash
# Port Forward Prometheus Service
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
```

This format keeps the commands organized and easily copy-pasteable for execution.
