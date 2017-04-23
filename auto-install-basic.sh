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
[ -e "~/.vim" ] && die "~/.vim already exists."
[ -e "~/.vimrc" ] && die "~/.vimrc already exists."

cd ~
git clone https://github.com/bennettip/vimrc.git
mkdir ~/.vim/colors
ln -s ~/vimrc/basic.vim .vimrc
ln -s ~/vimrc/colors/ben.vim ~/.vim/colors/ben.vim

echo "basic vimrc is installed."

