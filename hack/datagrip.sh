#!/bin/sh

set -e 
DG_VERSION="2018.2"
cd /tmp
wget https://download.jetbrains.com/datagrip/datagrip-${DG_VERSION}.tar.gz
tar -xzf datagrip-${DG_VERSION}.tar.gz

rm -rf /opt/datagrip
mkdir -p /opt
sudo mv ./DataGrip-${DG_VERSION} /opt/datagrip

echo "-> If you need to restore your old config folder just move to ~/.datagrip before start the application"
