# START
# GATHER WHAT YOU HAVE
history 
# ENVIRONMENT
minikube stop
minikube start

kubectl config use-context minikube
kubectl get pods
kubectl get pods --allnamespaces

# IAC PULL DOWN
cd projects
ls
prometheus
ls
git pull
kubectl create namespace monitoring
kubectl get pods -n monitoring

# END
