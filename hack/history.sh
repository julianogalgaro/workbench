#!/bin/sh

echo "Restoring the history"
mkdir -p ${HOME}/workspace/juliano.galgaro
cd ${HOME}/workspace/juliano.galgaro
git clone https://gitlab.neoway.com.br/juliano.galgaro/bots.git
cd bots/KEYS

./vault.sh unlock
cp history/zsh_history ${HOME}/.zsh_history
