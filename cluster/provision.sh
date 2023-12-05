#!/bin/sh

IPADDR="192.168.254.128"
POD_CIDR="172.31.0.0/16"

curl https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/tigera-operator.yaml -O
curl https://raw.githubusercontent.com/projectcalico/calico/v3.26.1/manifests/custom-resources.yaml -O
kubectl create -f tigera-operator.yaml

# Edit custom-resources.yaml: SET $POD_CIDR
kubectl create -f custom-resources.yaml
