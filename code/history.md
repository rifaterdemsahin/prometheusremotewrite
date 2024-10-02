# START

## GATHER WHAT YOU HAVE
```bash
history
```

## ENVIRONMENT SETUP
> https://youtu.be/feHSU0BMcco?t=468
```bash
minikube stop
minikube start

kubectl config use-context minikube
kubectl get pods
kubectl get pods --all-namespaces
```
## ENVIRONMENT MAIN MACHINE
```bash
kubectl get nodes
```

https://youtu.be/feHSU0BMcco?t=492

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
> https://youtu.be/feHSU0BMcco?t=620
## DEPLOY PROMETHEUS AND THANOS COMPONENTS

```bash
kubectl apply -f ./prometheus-operator-crds/
kubectl apply -R -f prometheus-operator/
kubectl apply -f prometheus
```
> https://youtu.be/feHSU0BMcco?t=631

# END

# SOURCE
https://youtu.be/feHSU0BMcco
