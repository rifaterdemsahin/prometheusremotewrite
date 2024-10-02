# MASTER LOG FIND
# See with labels that gets deployed
 kubectl get pods -n monitoring --show-labels
 
# Filtered logs
kubectl logs -l app.kubernetes.io/managed-by=prometheus-operator -n monitoring -f

![image](https://github.com/user-attachments/assets/390c04a9-844c-405e-aec1-6379e8976449)

--------------------------------------------------------------------------------------------------
