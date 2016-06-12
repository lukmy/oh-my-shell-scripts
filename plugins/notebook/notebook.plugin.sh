DEFAULT_NOTEBOOK_DIR="$HOME/notebook"

MY_SHELL_NOTEBOOK_DIR=${MY_SHELL_NOTEBOOK_DIR:-$DEFAULT_NOTEBOOK_DIR}

notebook_push() {
    cd $MY_SHELL_NOTEBOOK_DIR;
    git commit -am 'daily'
    git push
    cd -
}

notebook_pull() {
    cd $MY_SHELL_NOTEBOOK_DIR;
    git commit -am 'daily'
    git pull
    cd -
}
