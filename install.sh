#!/usr/bin/env bash

# install dotfiles
make

# trying this with linuxbrew
#
# make sure dependencies are up to date
sudo apt-get install build-essential procps curl file git

# install linuxbrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# add brew to path
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"

# install brew packages
which brew
brew bundle

# install vim plugins
vi +PlugInstall +qall --headless
