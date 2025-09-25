export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git aliases)
source $ZSH/oh-my-zsh.sh

## ZSH HELPERS
alias zrl="source ~/.zshrc"
alias zed="cursor ~/.zshrc"
alias zcat="cat ~/.zshrc"
alias zgrep="cat ~/.zshrc | grep"

## CURSOR
alias cs="cursor"

## CLAUDE
alias cl="claude"

## NPM
alias ni="npm install"
alias nd="npm run dev"

# GENERAL
alias c="clear"

# GIT (custom)
alias gbnp='function _gbnp(){ git checkout -b "$1" && git push -u origin "$1"; }; _gbnp'
alias glb="git checkout -"