# Thanos Setup for Kubernetes with Prometheus and Grafana

This repository contains a step-by-step guide and configuration files to set up a highly available monitoring solution using [Thanos](https://thanos.io/), [Prometheus](https://prometheus.io/), and [Grafana](https://grafana.com/). The setup includes multiple Kubernetes clusters, remote write and read capabilities, and long-term storage with object stores like AWS S3 or Minio.

## Overview

### Main Components
- **Prometheus**: Collects and stores real-time metrics.
- **Thanos**: Adds long-term storage and global view across multiple clusters.
- **Grafana**: Visualizes metrics from Prometheus and Thanos.

### Key Features
- Monitoring across multiple Kubernetes clusters.
- Remote read/write for Prometheus metrics.
- Long-term storage in object stores.
- Secure mutual TLS between components.
- Centralized Grafana dashboard for all environments.

## Setup

### Prerequisites
- Kubernetes Cluster (e.g., Minikube, AWS EKS).
- Installed tools: `kubectl`, `helm`, `docker`, `minio` (optional for local object store).
- Basic understanding of Kubernetes, Prometheus, and Grafana.

### Components Deployed
1. **Prometheus Operator**: For managing Prometheus instances in Kubernetes.
2. **Thanos Sidecar**: Provides remote read/write capabilities.
3. **Thanos Querier**: Central query point for multiple Prometheus instances.
4. **Thanos Receiver**: Handles remote write data from Prometheus.
5. **Thanos Store Gateway**: Provides access to historical metrics.
6. **Thanos Compactor**: Downsamples long-term data to save storage.
7. **Grafana**: Connects to Thanos for visualizing metrics.

## Getting Started

### Step 1: Install Minikube 
Start by setting up a Kubernetes environment using Minikube on Windows or Mac. This repository contains scripts and configurations for both local environmets.

### Step 2: Deploy Prometheus and Thanos
1. Clone this repository:
   ```bash
   git clone https://github.com/your-repo/thanos-monitoring.git
   cd thanos-monitoring
   ```

2. Create the monitoring namespace:
   ```bash
   kubectl create namespace monitoring
   ```

3. Apply the custom resource definitions and deploy the Prometheus Operator:
   ```bash
   kubectl apply -f prometheus-operator/
   ```

4. Deploy Prometheus and Thanos components:
   ```bash
   kubectl apply -f prometheus-thanos/
   ```

Check Logs
   ```bash
kubectl logs -l app.kubernetes.io/name=prometheus -n monitoring -f
   ```

Port Forward
   ```bash
kubectl get svc -n monitoring
   ```
   ```bash
kubectl port-forward svc/prometheus-operated 9090 -n monitoring
   ```

### Step 3: Configure Object Store (Minio or S3)
For local storage, use Minio as an S3-compatible object store. Modify `object-store.yaml` with your S3 or Minio credentials.

- If using Minio, deploy Minio in Kubernetes:
   ```bash
   kubectl apply -f minio/
   ```

### Step 4: Grafana Setup
1. Deploy Grafana:
   ```bash
   kubectl apply -f grafana/
   ```

2. Access Grafana UI using port-forwarding:
   ```bash
   kubectl port-forward svc/grafana 3000:3000 -n monitoring
   ```

   Default credentials are:
   - Username: `admin`
   - Password: `grafana`

3. Add Thanos as a data source in Grafana.

### Step 5: Mutual TLS Setup
For secure communication between Thanos components, mutual TLS is implemented. Follow the TLS configuration steps provided in the `mutual-tls/` folder.

### Step 6: Scaling and High Availability
Thanos can scale horizontally for high availability. Update the `thanos-receiver`, `querier`, and `store-gateway` configurations to scale the deployment.

### Step 7: Clean Up
To clean up the environment, delete the deployed resources:
```bash
kubectl delete -f prometheus-thanos/
kubectl delete -f grafana/
kubectl delete namespace monitoring
```

## Next Steps

1. **Remote Write Configuration**: Switch to remote write for lower latency and real-time data streaming from Prometheus to Thanos.
2. **Production Deployment on AWS**: Follow the next steps in the tutorial to deploy Thanos on AWS using EKS and S3.

## References
- [Thanos Documentation](https://thanos.io/tip/introduction.md/)
- [Prometheus Operator](https://github.com/prometheus-operator/prometheus-operator)

## License
This project is licensed under the MIT License.
