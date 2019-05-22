#!/bin/sh
set -e

echo "Installing git and other basic stuff"
sudo apt update
sudo apt install -y vim git lsof openssh-server curl dos2unix
sudo apt install -y make xclip unrar scrot build-essential net-tools parallel
sudo apt install -y ntfs-3g nitrogen xautolock xbacklight blueman xdotool 

git config --global user.name "Juliano Galgaro"
git config --global user.email "juliano.galgaro@neoway.com.br"

echo "Configure time properly"
sudo ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
sudo timedatectl set-ntp true

echo "Configure keyboard layout"
sudo localectl set-keymap br-abnt2

echo "VPN Support"
sudo apt install -y openvpn

echo "Locale support"
sudo localectl set-locale LANG=en_US.UTF-8

echo "Installing Sound Stuff"
sudo apt install -y pulseaudio pavucontrol

echo "Installing Monitoring tools"
sudo apt install -y iotop iftop htop sysstat

echo "Installing snapd"
sudo apt install -y snapd

echo "Installing vlc"
sudo snap install vlc

echo "Get dotfiles project"
mkdir -p ${HOME}/workspace/julianogalgaro
git clone https://github.com/julianogalgaro/dotfiles.git ${HOME}/workspace/julianogalgaro/dotfiles

echo "Restoring background"
mkdir -p ${HOME}/.config/nitrogen
cp ./hack/cfg/nitrogen-bg-saved.cfg ${HOME}/.config/nitrogen/bg-saved.cfg
nitrogen --restore
