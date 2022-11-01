export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$(dirname "${BASH_SOURCE[0]}")/bin":$PATH

export GOPATH="$HOME/go"

export EDITOR="emacs -nw"
export HISTCONTROL=ignoredups
export PS1='\h:\w$(__git_ps1)\$ '

alias ll="ls -lah"
alias cd="pushd"
alias pd="popd"

alias rebash="exec $SHELL"

alias gits="git status"
alias gitwipe="git reset --hard HEAD"
alias gcam="git commit -a -m 'commit'"
alias stgs="stg series"

alias e=$EDITOR


