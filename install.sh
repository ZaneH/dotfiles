#!/bin/bash

# RC files
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/zshrc ~/.zshrc

# My zsh preferences & shortcuts
ln -s $(pwd)/local.zsh ~/.local.zsh
ln -s $(pwd)/alias.zsh ~/.alias.zsh

# Config dirs
ln -s $(pwd)/neofetch ~/.config
ln -s $(pwd)/kitty ~/.config
ln -s $(pwd)/yabai ~/.config
ln -s $(pwd)/skhd ~/.config
ln -s $(pwd)/macchina ~/.config
