#!/bin/sh

set -e

echo "Call some scripts in the ${HOME}/.profile"
cat ./hack/cfg/profile >> ${HOME}/.profile
