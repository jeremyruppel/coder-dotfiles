#!/usr/bin/env bash

# NB you need to restart workspace after installing this file
alias vi='nvim'
alias vif='vi $(fzf)'
alias lsa='ls -Gla'

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export FZF_DEFAULT_COMMAND='rg --files --hidden'
