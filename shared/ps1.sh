
function shared_workdir {
    d=$PWD
    d=$(echo $d | sed "s/^\/home\/${USER}/~/")
    d=$(echo $d | sed "s/^\/Users\/${USER}/~/")

    echo $d
}

function shared_ps1_suffix {
    true
}

function ps1 {
    echo -n $(echo $HOSTNAME | sed 's/\..*$//')
    echo -n ':$(local_workdir)'
    echo -n '$(local_ps1_suffix)'
    echo -n '$ '
}

source $HOMERC/local/ps1.sh

export PS1="$(ps1)"

