#!/bin/sh

set -o errexit
set -o nounset

CURRENT_DIR=$(pwd)

echo "Installing some fonts"
cd /tmp
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
cd awesome-terminal-fonts
./install.sh

cd ${CURRENT_DIR}
mkdir -p ${HOME}/.config/fontconfig/conf.d
cp ./hack/cfg/11-powerline-symbols.conf ${HOME}/.config/fontconfig/conf.d/
fc-cache -vf

sudo apt install fonts-powerline
echo "-> You need to restart your machine after install fonts-powerline"
