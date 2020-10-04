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

cd ~ || exit
git clone https://github.com/bennettip/vimrc.git
mkdir -p ~/.vim/colors
ln -s ~/vimrc/basic.vim .vimrc
ln -s ~/vimrc/colors/ben.vim ~/.vim/colors/ben.vim

echo "basic vimrc is installed."

