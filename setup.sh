#!/bin/bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim "+source .vimrc" +PluginInstall +qall
cd ~/.vim/bundle/YouCompleteMe && ./install.sh
