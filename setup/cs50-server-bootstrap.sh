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

# Configure dotfiles
git config --global core.excludesfile ~/.gitignore_global
echo ""
echo "bootstrap complete"
