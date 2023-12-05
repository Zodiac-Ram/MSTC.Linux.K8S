#!/bin/sh

sudo kubeadm config images pull
IPADDR="10.31.1.101"
POD_CIDR="172.31.0.0/16"
sudo kubeadm init --apiserver-advertise-address=$IPADDR --pod-network-cidr=$POD_CIDR

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl get pods -n kube-system
