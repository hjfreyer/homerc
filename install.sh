#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

rm -f $HOME/.zshrc
ln -s $SCRIPT_DIR/init.zsh $HOME/.zshrc

MISE_DIR=$HOME/.config/mise/conf.d/

mkdir -p $MISE_DIR
rm -f $MISE_DIR/common.toml
ln -s $SCRIPT_DIR/home-mise.toml $MISE_DIR/common.toml

curl -fsSL https://mise.run | sh
curl -sS https://starship.rs/install.sh | sh
sudo apt install fzf

