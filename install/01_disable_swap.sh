#!/bin/sh

# Disable SWAP
sudo swapoff -a
sudo sed -i -E 's|^(.+\s+swap\s+.+)$|#\1|gi' /etc/fstab
