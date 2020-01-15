#!/bin/bash
dotfiles="$HOME/dotfiles"
files="gitconfig gitignore tmux.conf vimrc zprofile zshrc"

for file in $files; do
  rm $HOME/.$file
  ln -s $dotfiles/$file $HOME/.$file
done
