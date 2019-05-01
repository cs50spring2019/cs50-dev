#!/bin/bash

#
echo "Installing dot files..."
dotdir=~/cs50-dev/dotfiles/csservers
for dot in $dotdir/*; do
    dotfile=.${dot##*/}
    dotpath=~/$dotfile
    echo "Copying: $dot To: $dotpath"
    cp $dot $dotpath
done

# Ignore global git ignore
git config --global core.excludesfile ~/.gitignore_global

# Source our new bashrc
source ~/.bashrc

echo ""
echo "bootstrap complete"
