#!/usr/bin/env bash

# install dotfiles
make

# install vim plugins
vi +PlugInstall +qall --headless
