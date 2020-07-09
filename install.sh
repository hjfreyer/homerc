#!/bin/bash

set -x

tmp_dir=$(mktemp -d -t homerc-XXXXXXXXXX)

cd $tmp_dir
wget https://github.com/hjfreyer/homerc/archive/master.zip
unzip master.zip
mkdir -p $HOME/.bashrc.d
mv homerc-master/bashrc.d/* $HOME/.bashrc.d/

grep -qxF 'source $HOME/.bashrc.d/*' $HOME/.bashrc || echo 'source $HOME/.bashrc.d/*' >> $HOME/.bashrc
