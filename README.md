# Kubernetes Networking Observations with Kindnet

This repository accompanies the **Medium article series** on Kubernetes pod-to-pod networking internals using [Kindnet CNI](https://github.com/kubernetes-sigs/kind/tree/main/images/kindnetd) in a Minikube cluster. Each article explores how Kubernetes routes traffic within and across nodes in a Kindnet setup—**without bridges, overlays, or tunnels**.

📚 Read the full blog series on Medium:

1. [Inside a Pod’s Birth: Veth Pairs, IPAM, and Routing with Kindnet](https://medium.com/itnext/inside-a-pods-birth-veth-pairs-ipam-and-routing-with-kindnet-cni-<article-id>)
2. [How Intra-Node Pod Traffic Actually Flows in Kindnet](https://medium.com/itnext/how-intra-node-pod-traffic-actually-flows-in-kindnet-<article-id>)
3. [Inter-Node Pod Traffic with Kindnet: The No-Overlay Walkthrough](https://medium.com/itnext/inter-node-pod-traffic-with-kindnet-the-no-overlay-walkthrough-<article-id>)
4. [How Kindnet NATs Outbound Pod Traffic Without Breaking Intra-Cluster Visibility](https://medium.com/itnext/how-kindnet-nats-outbound-pod-traffic-without-breaking-intra-cluster-visibility-<article-id>)

## Repository Structure

This repo provides manifests used to validate L3 routing behavior in Kindnet with both single-node and multi-node Minikube setups.

* `manifests/tshark.yaml`: Deploys debug pods for inspecting **intra-node** communication using `tshark` and `iproute2` inside a single-node Minikube cluster.
* `manifests/tshark-multi-node.yaml`: Targets a **two-node Minikube** cluster to capture and trace **inter-node** traffic between pods scheduled on different nodes.

## Get Started

```bash
# Single-node setup
kubectl apply -f manifests/tshark.yaml

# Multi-node (two-node Minikube) setup
kubectl apply -f manifests/tshark-multi-node.yaml
```
