# jump to theme directory
function theme () {
    cd ~/dev/$1/web/app/themes/towa-theme
}

# open projectin vs code
function dev() {
    project=$1;
    code ~/dev/${project}
}

function devopen () {
    project=$1;
    code ~/dev/${project} && cd ~/dev/${project}/web/app/themes/towa-theme
}

# jump to theme directory and run yarn watch
function devrun () {
    project=$1;
    cd ~/dev/${project}/web/app/themes/towa-theme && yarn watch
}

## Homestead Stuff ##
function homestead() {
    ( cd ~/Homestead && vagrant $* )
}

function weather() {
    city="$1"

    if [ -z "$city" ]; then
        city="Vienna"
    fi

    eval "curl http://wttr.in/${city}"
}