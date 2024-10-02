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

```bash
kubectl logs -l app.kubernetes.io/name=prometheus -n monitoring -f
kubectl get pods -n monitoring
kubectl logs -f prometheus-staging-0 -c thanos-sidecar -f -n monitoring
```

> https://youtu.be/feHSU0BMcco?t=686

# Port Forwarding
```bash
kubectl get svc -n monitoring -f
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
```
> https://youtu.be/feHSU0BMcco?t=690
# RESOURCES
http://localhost:9090

# MINIO SETUP AND INGRESS
```bash
kubectl apply -f minio-ns.yaml
kubetctl apply -f minio
kubectl get pods -n minio
minikube service minio-console --url -n minio
```
# LOGIN TO MINIO AND CREATE / UPDATE YAML
```bash
kubectl apply -f prometheus
```
> https://youtu.be/feHSU0BMcco?t=779
> https://youtu.be/feHSU0BMcco?t=887


# END

# SOURCE
https://youtu.be/feHSU0BMcco
