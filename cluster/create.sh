#!/bin/sh

sudo kubeadm config images pull
IPADDR="192.168.254.128"
POD_CIDR="172.31.0.0/16"
sudo kubeadm init --apiserver-advertise-address=$IPADDR --pod-network-cidr=$POD_CIDR

kubectl get pods -n kube-system
