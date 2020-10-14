#!/bin/sh
VIMRC_HOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

for COMMAND in fzf vim git; do
    ! [ -x "$(command -v $COMMAND)" ] && die "Please install $COMMAND."
done

for TARGET in vimrc .vim .vimrc .gvimrc; do
    [ -e "$VIMRC_HOME/$TARGET" ] && die "$VIMRC_HOME/$TARGET already exists."
done

git clone https://github.com/bennettip/vimrc.git "$VIMRC_HOME"
cd "$VIMRC_HOME" || exit
git submodule update --init

./install-vimrc.sh

echo "vimrc is installed."
