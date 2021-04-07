#!/bin/sh -ex

# install.sh 
# symlink you dotfiles to appropriate places

DIR=$PWD

DOTFILES=(
  "vimrc"
  "clang-format"
  "inputrc-format"
  "vim/ftplugin/cpp.vim"
  "vim/ftplugin/python.vim"
  "vim/ftplugin/java.vim"
)

mkdir -p $HOME/.vim/ftplugin

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/.${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/.${dotfile}"
done
