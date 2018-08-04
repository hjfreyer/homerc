#!/bin/bash

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export EDITOR="emacs -nw --no-init-file"
export PATH="$HOME/.bin:$PATH"
export HISTCONTROL=ignoredups

export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"

export PS1='$(ps1)'

# Some functions.

function rsed {
  find -type f -exec sed -i "$@" {} +
}

function ps1 {
  echo -n "${HOSTNAME%.*}:"
  echo -n "${PWD/$HOME/~}"
  echo -n '$ '
}
