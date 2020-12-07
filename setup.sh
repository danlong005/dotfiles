#!/usr/bin/env bash

rm -rf ~/.config/*
rm -rf ~/.oh-my-zsh

echo "Preparing to install"
sudo -v

source scripts/git_install.sh

source scripts/tools_installation.sh

source scripts/languages_installation.sh

source scripts/vim_plugins.sh

source scripts/create_symlinks.sh

source scripts/coc-extensions.sh
