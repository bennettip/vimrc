#!/bin/sh
VIMHOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

[ -e "$VIMHOME/vimrc" ] && die "$VIMHOME/vimrc already exists."
[ -e "$HOME/.vim" ] && die "$HOME/.vim already exists."
[ -e "$HOME/.vimrc" ] && die "$HOME/.vimrc already exists."

git clone https://github.com/bennettip/vimrc.git "$VIMHOME"
cd "$VIMHOME" || exit
git submodule update --init

./install-vimrc.sh

echo "vimrc is installed."

