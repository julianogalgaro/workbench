#!/bin/sh

set -e

sudo add-apt-repository -y ppa:jtaylor/keepass
sudo apt update
sudo apt install keypass2
