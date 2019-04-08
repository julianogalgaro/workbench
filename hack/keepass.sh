#!/bin/sh

set -e

sudo apt-add-repository -y ppa:jtaylor/keepass
sudo apt update
sudo apt install -y keepass2
