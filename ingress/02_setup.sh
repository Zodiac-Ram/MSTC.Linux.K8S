#!/bin/sh

echo "Add the external IPs for your cluster nodes."
echo "spec:"
echo "  ..."
echo "  clusterIPs:"
echo "    - 10.102.15.128"
echo "  externalIPs:"
echo "    - 192.168.254.128"
echo "    - 192.168.254.129"
echo "    - 192.168.254.130"
echo ""

kubectl edit svc/nginx-ingress-ingress-nginx-controller
