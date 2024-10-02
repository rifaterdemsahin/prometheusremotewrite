# See with labels that gets deployed
 kubectl get pods -n monitoring --show-labels



# Filtered logs
kubectl logs -l app.kubernetes.io/name-prometheus-operator -n monitoring -f

