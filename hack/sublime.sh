#!/bin/sh

set -e 

echo "Installing Sublime"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -y  -

sudo apt update
sudo apt install -y sublime-text
