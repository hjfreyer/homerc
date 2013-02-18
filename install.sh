#!/bin/bash

HOMERC=$(cd "${0%/*}" 2>/dev/null; echo "$PWD")

echo "export HOMERC=$HOMERC
source $HOMERC/shared/bashrc.sh" >> ~/.bashrc
echo "(load \"$HOMERC/shared/emacs.el\")
(load \"$HOMERC/local/emacs.el\")" >> ~/.emacs
echo "source $HOMERC/shared/screenrc" >> ~/.screenrc
