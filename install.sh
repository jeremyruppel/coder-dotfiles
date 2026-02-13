#!/usr/bin/env bash

# install dotfiles
make

# make sure homebrew's dependencies are up to date
sudo apt-get install build-essential procps curl file git

# install linuxbrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install brew packages
brew analytics off
brew bundle

# install vim plugins
nvim --headless +PlugInstall +qall
nvim --headless +":CocInstall coc-json coc-tsserver coc-go" +qall
