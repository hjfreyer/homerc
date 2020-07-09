
alias ll="ls -lah"
alias cd="pushd"
alias pd="popd"

alias rebash="exec $SHELL"

alias gits="git status"
alias gitwipe="git reset --hard HEAD"
alias gcam="git commit -a -m 'commit'"

alias e=$EDITOR

function mk_gssh_cmd {
    echo -n "gcloud alpha cloud-shell ssh --ssh-flag=-E/dev/null "
    for p in "${PORTS[@]}"; do
        echo -n "--ssh-flag=-L${p}:localhost:${p} "
    done
    
    echo $@
}

function gssh {
    local PORTS=( 3000 3111 8080 8081 9229 )
    local CMD=$(mk_gssh_cmd $@)
    echo $CMD
    exec $CMD
}

