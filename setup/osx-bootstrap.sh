#!/bin/bash

# Install homebrew
if ! [ -x "$(command -v brew)" ]; then
    echo 'Hombrew not installed - trying to install now...' >&2
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
echo 'Using Homebrew (brew) to install some base tools (virtualbox, vagrant, etc.)' >&2

# just in case someone manually downloaded this file/repo instead of using git to fetch it
if ! [ -x "$(command -v git)" ]; then
    brew install git 
fi

# then install base tools (we can try to run these blind; brew will keep chugging along even if they are already installed.)
brew cask install virtualbox || exit 1
brew cask install vagrant || exit 1
# brew cask install ngrok   # for ssh sharing + you need to sign up for an account: https://ngrok.com
# vagrant plugin install vagrant-share  # for ssh sharing

# then setup a vagrant environment
echo 'Creating your dev Virtual Machine for you - this will take a few minutes...' >&2
vagrant up || exit 1
vagrant halt || exit 1

# Configure dotfiles
git config --global core.excludesfile ~/.gitignore_global
echo ""
echo "bootstrap complete"
