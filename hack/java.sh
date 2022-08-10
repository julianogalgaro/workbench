#!/bin/sh

set -e

echo "Installing Java"
sudo add-apt-repository ppa:linuxuprising/java -y
sudo apt update
sudo apt install -y oracle-java16-set-default ant
