
function ps1_hostname {
    echo -n $HOSTNAME | sed 's/\..*$//'
}

function ps1_workdir {
    echo -n $PWD | \
	sed -e "s/^\/home\/${USER}/~/" \
	    -e "s/^\/Users\/${USER}/~/"
}

function ps1 {
    ps1_hostname
    echo -n ':'
    ps1_workdir
    echo -n '$ '
}

export PS1='$(ps1)'

