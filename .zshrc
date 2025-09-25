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
alias nil="npm install --legacy-peer-deps"
alias nb="npm run build"
alias nd="npm run dev"
alias ns="npm run start"
alias nrf="redis-cli flushall && clear && ns"

# GENERAL
alias c="clear"

# GIT (custom)
alias gbnp='function _gbnp(){ git checkout -b "$1" && git push -u origin "$1"; }; _gbnp'
alias gitbnppr='f() { gbnp $1 && gaa && git commit -m "Updates: $1" && gitp && cpr staging };f'
# Cherry-pick last commit hash to another branch, specify branch name as argument
alias gitcplc='f() { commit_hash=$(git rev-parse HEAD) && git checkout "$1" && git cherry-pick "$commit_hash" && git push; }; f'

alias glb="git checkout -"
alias gitds="git checkout -- ."

alias gcom="git checkout main"
alias gcos="git checkout staging"
alias gcod="git checkout dev/market-maker"

# Create a new pull request
alias cpr='f() { \
    BASE=$1; \
    HEAD=$(git symbolic-ref --short HEAD); \
    TITLE=${2:-"Updates $(date +"%d-%m-%Y")"}; \
    gh pr create --base "$BASE" --head "$HEAD" --title "$TITLE" --body "I love soc2"; \
}; f'

### SSH
alias sshall="ssh-add ~/.ssh/id_ed25519"