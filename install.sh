#!/bin/sh -ex

# install.sh 
# symlink you dotfiles to appropriate places

DIR=$PWD

DOTFILES=(
  "vimrc"
  "vim/ftplugin/cpp.vim"
)

for dotfile in "${DOTFILES[@]}";do
	rm -rf "${HOME}/.${dotfile}"
	ln -sf "${DIR}/${dotfile}" "${HOME}/.${dotfile}"
done
