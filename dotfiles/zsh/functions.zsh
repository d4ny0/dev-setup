# jump to theme directory
function theme () {
    cd ~/code/$1/web/app/themes/towa-theme
}

# open projectin vs code
function dev() {
    project=$1;
    code ~/code/${project}
}

function devopen () {
    project=$1;
    code ~/code/${project} && cd ~/code/${project}/web/app/themes/towa-theme
}

# jump to theme directory and run yarn watch
function devrun () {
    project=$1;
    cd ~/code/${project}/web/app/themes/towa-theme && yarn watch
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