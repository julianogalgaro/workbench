#!/bin/sh

set -e 

echo "Installing docker"
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository -y \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

echo "Adding user to docker group"
sudo groupadd -f docker
sudo usermod -aG docker $USER

echo "Enabling docker"
sudo systemctl enable docker

echo "Installing docker-compose"
sudo apt install -y docker-compose
