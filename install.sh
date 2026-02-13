#!/usr/bin/env bash

# trying this with linuxbrew
#
# make sure dependencies are up to date
sudo apt-get install build-essential procps curl file git

# install linuxbrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"



# install dotfiles
# make

# install vim plugins
# vi +PlugInstall +qall --headless
