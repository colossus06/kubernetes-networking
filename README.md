# Kubernetes Networking Observations

This repository contains manifests used to explore Kubernetes networking, focusing on pod-to-pod communication in a Minikube cluster with the Kindnet CNI through this article published on Medium and my blog. It provides insights into how intra-node and inter-node traffic flows.

## Repository Contents

- **`manifests/tshark.yaml`**: A manifest for deploying pods with tools like `tshark` to capture and analyze network traffic within a single node minikube cluster with runtime docker and cni kindnet.
- **`manifests/tshark-multi-node.yaml`**: A manifest designed for multi-node minikube cluster to test inter-node pod communication within a two node minikube cluster with runtime docker and cni kindnet.

## Features

- Detailed analysis of Kubernetes pod networking.
- Examples of intra-node and inter-node communication using Kindnet CNI.
- Tools and techniques for inspecting traffic flow with `tshark` and `iproute2`.

## Getting Started


```bash
kubectl apply -f manifests/tshark.yaml
kubectl apply -f manifests/tshark-multi-node.yaml
```
