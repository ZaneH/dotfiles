#!/bin/bash

# RC files
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/zshrc ~/.zshrc

# My zsh preferences & shortcuts
ln -s $(pwd)/local.zsh ~/.local.zsh
ln -s $(pwd)/alias.zsh ~/.alias.zsh

# Config dirs
ln -s $(pwd)/neofetch ~/.config/neofetch
ln -s $(pwd)/kitty ~/.config/kitty
ln -s $(pwd)/yabai ~/.config/yabai
ln -s $(pwd)/skhd ~/.config/skhd
ln -s $(pwd)/macchina ~/.config/macchina
