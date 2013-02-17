#!/bin/bash

export EDITOR="emacs -nw --no-init-file"
export PATH="$HOMERC/shared/bin/:$HOMERC/local/bin/:$PATH"
export HISTCONTROL=ignoredups

export GOPATH="$HOME/go:$GOPATH"

source $HOMERC/shared/alias.sh
source $HOMERC/shared/ps1.sh

source $HOMERC/local/bashrc.sh

# Some functions.

function rsed {
  find -type f -exec sed -i "$@" {} +
}
