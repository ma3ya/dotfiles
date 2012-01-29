#!/bin/sh

DIR=`pwd`

ln -s ${DIR}/.bashrc   ~/.bashrc
ln -s ${DIR}/.vimrc    ~/.vimrc
ln -s ${DIR}/.screenrc ~/.screenrc

source ~/.bashrc
