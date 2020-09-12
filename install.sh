#!/bin/bash

set -x

rm -rf "$HOME/.homerc"
rm "$HOME/.bashrc.d"

tmp_dir=$(mktemp -d -t homerc-XXXXXXXXXX)

cd $tmp_dir
wget https://github.com/hjfreyer/homerc/archive/master.zip
unzip master.zip
mv homerc-master "$HOME/.homerc"
ln -s "$HOME/.homerc/bashrc.d/" "$HOME/.bashrc.d"

SOURCE_CMD='for f in $HOME/.bashrc.d/*.sh; do source "$f"; done'

grep -qxF "$SOURCE_CMD" $HOME/.bashrc || echo "$SOURCE_CMD" >> $HOME/.bashrc
