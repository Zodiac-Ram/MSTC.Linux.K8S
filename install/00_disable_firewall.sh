#!/bin/sh

sudo ufw disable
sudo systemctl stop apparmor
sudo systemctl disable apparmor
