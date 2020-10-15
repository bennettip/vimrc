#!/bin/sh
VIMRC_HOME=~/.vim

warn() {
    echo "$1" >&2
}

die() {
    warn "$1"
    exit 1
}

for COMMAND in vim git; do
    ! [ -x "$(command -v $COMMAND)" ] && die "Please install $COMMAND."
done

for TARGET in vimrc .vim .vimrc; do
    [ -e "$VIMRC_HOME/$TARGET" ] && die "$VIMRC_HOME/$TARGET already exists."
done

cd ~ || exit
git clone https://github.com/bennettip/vimrc.git
mkdir -p ~/.vim/colors
mv ~/vimrc/basic.vim .vimrc
mv ~/vimrc/colors/moria_mod.vim ~/.vim/colors/
rm -rf ~/vimrc

echo "basic vimrc is installed."
