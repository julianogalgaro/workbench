#!/bin/sh

set -e 

echo "Restoring the project"
mkdir -p ${HOME}/workspace/juliano.galgaro
cd ${HOME}/workspace/juliano.galgaro
#git clone https://gitlab.neoway.com.br/juliano.galgaro/bots.git
cd bots/KEYS/vault


./vault.sh unlock
echo "Restoring the history"
cp history/zsh_history ${HOME}/.zsh_history

echo "Restoring keys and .ssh/config"
#ln -s to the ssh config and private and pub keys
mkdir -p ${HOME}/.ssh/
ln -s ${HOME}/workspace/juliano.galgaro/bots/KEYS/ssh_keys_config ${HOME}/.ssh/config
cp -p ${HOME}/workspace/juliano.galgaro/bots/KEYS/vault/local_keys/id_rsa ${HOME}/workspace/juliano.galgaro/bots/KEYS/vault/local_keys/id_rsa.pub ${HOME}/.ssh/ 

