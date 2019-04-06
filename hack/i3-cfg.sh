#!/bin/sh

set -o errexit
set -o nounset

mkdir -p ${HOME}/.config/i3
cp ./hack/cfg/i3/config ${HOME}/.config/i3/config

mkdir -p ${HOME}/.config/i3status
cp ./hack/cfg/i3status/config ${HOME}/.config/i3status/config
