# Create Environment
kubectl apply -f minio-ns.yaml
kubetctl apply -f minio
kubectl get pods -n minio

# Create Ingress
minikube service minio-console --url -n minio

# Access for Immutable Environment
YNs7PmwL5vOaoMU9
otfTMeAeSge6CGqcjXnnffuX4yG5upng
