#!/bin/bash

# RC files
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/zshrc ~/.zshrc

# My zsh preferences & shortcuts
ln -s $(pwd)/local.zsh ~/.local.zsh
ln -s $(pwd)/alias.zsh ~/.alias.zsh

# Config dirs
ln -s $(pwd)/neofetch ~/.config

# Setup nvim
ln -s $(pwd)/nvim ~/.config/nvim

# Scripts
mkdir -p ~/.local/bin
ln -s $(pwd)/bin/scripts ~/.local/bin/scripts
