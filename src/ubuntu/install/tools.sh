#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install some common tools for further installation"
apt-get update 
apt-get install -y vim wget net-tools locales bzip2 \
    python-numpy \ #used for websockify/novnc
    libxt6 libxext6 libxv1 libglu1-mesa libxtst6 # used for turbovnc and virutal gl
apt-get clean -y
apt-get update && apt-get install -y 
echo "generate locales für en_US.UTF-8"
locale-gen en_US.UTF-8