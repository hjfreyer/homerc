
function ps1_hostname {
    echo -n $HOSTNAME | perl -pe 's/\..*$//'
}

function ps1_workdir {
    echo -n $PWD | \
	perl -p -e "s/^\/home\/${USER}/~/; s/^\/Users\/${USER}/~/"
}

function ps1 {
    ps1_hostname
    echo -n ':'
    ps1_workdir
    echo -n '$ '
}

export PS1='$(ps1)'

