# MASTER LOG FIND
# See with labels that gets deployed
 kubectl get pods -n monitoring --show-labels
 
# Filtered logs
kubectl logs -l app.kubernetes.io/managed-by=prometheus-operator -n monitoring -f

![image](https://github.com/user-attachments/assets/390c04a9-844c-405e-aec1-6379e8976449)

--------------------------------------------------------------------------------------------------

kubectl get svc -n monitoring
![image](https://github.com/user-attachments/assets/12d1eeb2-c909-4c8f-ad8c-644025c078bf)

# Port Forward
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
![image](https://github.com/user-attachments/assets/3bd0b4b8-d984-4573-b383-39c5671033b7)


# Create minio namespace
 kubectl apply -f minio-ns.yaml

 # Apply minio folder
  kubectl apply -f minio

#Port forward does not work as they implemented websockets
kubectl get pods -n minio
kubectl get svc -n minio  

# Use Ingress over minikube
minikube service minio-console --url -n minio
