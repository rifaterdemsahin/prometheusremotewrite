# START

## GATHER WHAT YOU HAVE
```bash
history
```

## ENVIRONMENT SETUP
```bash
minikube stop
minikube start

kubectl config use-context minikube
kubectl get pods
kubectl get pods --all-namespaces
```

## INFRASTRUCTURE AS CODE (IAC) PULL DOWN
```bash
cd projects
ls
cd prometheus
ls
git pull
kubectl create namespace monitoring
kubectl get pods -n monitoring
```

# END
```
# SOURCE
https://youtu.be/feHSU0BMcco
