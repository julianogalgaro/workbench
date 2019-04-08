#!/bin/sh

echo "Call some scripts in the ${HOME}/.profile"
cat ./hack/cfg/profile >> ${HOME}/.profile
