#!/bin/sh
VIMRC_HOME=$(pwd)
cd ..
for TARGET in vimrc gvimrc; do
    ln -s "$VIMRC_HOME/$TARGET" ".$TARGET"
done
