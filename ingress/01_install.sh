#!/bin/sh

# Install Ingress Port
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx     
helm install nginx-ingress ingress-nginx/ingress-nginx
