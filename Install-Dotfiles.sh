#!/bin/sh
set -eu

DIRNAME="$(cd `dirname "$0"` && pwd)"

rm -f $HOME/.bashrc && ln -sf $DIRNAME/bashrc $HOME/.bashrc
rm -f $HOME/.vimrc && ln -sf $DIRNAME/vimrc $HOME/.vimrc

rm -f $HOME/.gitconfig
git config --global user.name 'Matt Gucci'
git config --global user.email matt9ucci@gmail.com
git config --global core.editor vi
git config --global credential.helper 'cache --timeout=86400'
git config --global alias.br branch
git config --global alias.c commit
git config --global alias.co checkout
git config --global alias.st status

