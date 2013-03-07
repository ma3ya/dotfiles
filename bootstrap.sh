#!/bin/bash
DIR=`pwd`

[ -f ~/.bashrc ]   || ln -s ${DIR}/.bashrc   ~/.bashrc
[ -f ~/.bash_ps ]  || ln -s ${DIR}/.bash_ps  ~/.bash_ps
[ -f ~/.vimrc ]    || ln -s ${DIR}/.vimrc    ~/.vimrc
[ -f ~/.screenrc ] || ln -s ${DIR}/.screenrc ~/.screenrc
[ -f ~/.gitconfig ] || ln -s ${DIR}/.gitconfig ~/.gitconfig

. ~/.bashrc

# neobundleの導入
which git > /dev/null
if [ $? -eq 0 ]; then
    echo git clone git://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
fi
