#!/bin/sh

set -e 

echo "Installing Sublime"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add  -

echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt update
sudo apt install -y sublime-text

echo "Installing GoSublime"
mkdir -p $HOME/.config/sublime-text-3/Packages
cd $HOME/.config/sublime-text-3/Packages
git clone https://margo.sh/GoSublime

echo "Installing Goimports"
got get golang.org/x/tools/cmd/goimports
