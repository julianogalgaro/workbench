#!/bin/sh

set -o errexit
set -o nounset

echo "Installing i3"
sudo apt install -y i3
sudo apt install -y i3lock

./i3-cfg.sh

