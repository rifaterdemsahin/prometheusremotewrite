kubectl get svc -n monitoring
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
