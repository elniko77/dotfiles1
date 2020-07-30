#!/bin/bash
# Create links for dotfiles

declare -a ConfigFilesArray=("bashrc" "zshrc"  "vimrc" "vim" )

for val in ${ConfigFilesArray[@]}; do
    if ([ -f ~/.$val ] || [ -d ~/.$val ]); then
       mv ~/.$val ~/.$val.bak
    fi
    ln -s ~/dotfiles/$val ~/.$val
done

mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# Install solarized theme:
git clone https://github.com/lifepillar/vim-solarized8.git  ~/.vim/pack/themes/opt/solarized8

