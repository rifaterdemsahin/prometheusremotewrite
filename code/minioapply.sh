# Create Environment
kubectl apply -f minio-ns.yaml
kubetctl apply -f minio
kubectl get pods -n minio

# Create Ingress
minikube service minio-console --url -n minio
