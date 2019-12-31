#!/bin/bash
# Create links for dotfiles

declare -a ConfigFilesArray=("bashrc" "zshrc"  "vimrc" "vim" )

for val in ${ConfigFilesArray[@]}; do
    if ([ -f ~/.$val ] || [ -d ~/.$val ]); then
       mv ~/.$val ~/.$val.bak
    fi
    ln -s ~/dotfiles/$val ~/.$val
done
