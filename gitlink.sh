#!/bin/bash

set -x

cd "$HOME/.homerc"
git init
git remote add origin git@github.com:hjfreyer/homerc.git
git fetch origin master
git reset origin/master
