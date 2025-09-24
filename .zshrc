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
alias cl="clear"