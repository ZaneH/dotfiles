#!/bin/bash

# TODO: Make this script good

# RC files
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/zshrc ~/.zshrc

# tmux
ln -s $(pwd)/tmux.conf ~/.tmux.conf

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
