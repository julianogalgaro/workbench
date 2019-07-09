#!/bin/sh

echo "Installing OSquery"

sudo wget -qO - https://repository.neoway.com.br/repo.key | sudo apt-key add -
echo "deb https://repository.neoway.com.br/production /" | sudo tee -a /etc/apt/sources.list.d/neoway-repo.list

sudo apt update
sudo apt install -y osquery-neoway


echo "Installing UFW - Firewall"
sudo apt-get install ufw
sudo ufw enable
