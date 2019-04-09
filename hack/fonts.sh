#!/bin/sh

set -o errexit
set -o nounset

echo "Installing some fonts"
cd /tmp
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
cd awesome-terminal-fonts
./install.sh

mkdir -p ${HOME}/.config/fontconfig/conf.d
cp ./hack/cfg/11-powerline-symbols.conf ${HOME}/.config/fontconfig/conf.d/
fc-cache -vf
