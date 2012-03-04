#!/bin/bash
DIR=`pwd`

[ -f ~/.bashrc ]   || ln -s ${DIR}/.bashrc   ~/.bashrc
[ -f ~/.bash_ps ]  || ln -s ${DIR}/.bash_ps  ~/.bash_ps
[ -f ~/.vimrc ]    || ln -s ${DIR}/.vimrc    ~/.vimrc
[ -f ~/.screenrc ] || ln -s ${DIR}/.screenrc ~/.screenrc

source ~/.bashrc
