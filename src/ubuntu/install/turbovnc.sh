#!/usr/bin/env bash
set -e

echo "Install Turbo VNC server"

apt-get update && apt-get install -y libxt6 libxext6 libxv1 libglu1-mesa libxtst6

# Fetch and install VirtualGL
wget https://sourceforge.net/projects/virtualgl/files/2.6.4/virtualgl_2.6.4_amd64.deb/download -O vgl.deb && \
    dpkg -i vgl.deb && \
    rm vgl.deb

# Fetch and install TurboVNC
wget https://sourceforge.net/projects/turbovnc/files/2.2.5/turbovnc_2.2.5_amd64.deb/download -O tvnc.deb && \
    dpkg -i tvnc.deb && \
    rm tvnc.deb

/opt/VirtualGL/bin/vglserver_config -config +s +f -t