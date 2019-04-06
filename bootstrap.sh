#!/bin/sh

set -o errexit
set -o nounset

export GOROOT=$HOME/go
export GOPATH=$HOME/workspace/go
export PATH=$PATH":"$GOPATH"/bin:"$GOROOT"/bin"

hack/essentials.sh
hack/fonts.sh
hack/golang.sh
hack/window-manager.sh
hack/browsers.sh
hack/docker.sh
hack/zsh.sh
hack/sublime.sh
hack/spotify.sh
hack/slack.sh
hack/datagrip.sh
hack/robomongo.sh
hack/eclipse.sh
hack/history.sh
