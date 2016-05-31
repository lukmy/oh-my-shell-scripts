alias ec='emacsclient -t -a ""'
alias ecx='emacsclient -c -a ""'
alias emacs='emacs --insecure'

alias psemacs='ps aux | grep -i emacs'
alias pse='ps aux | grep -i emacs'

MY_SH_EMACS_REMOTE_VPS=${MY_SH_EMACS_REMOTE_VPS:-'conoha'}

emacs_upgrade_from_remote_vps() {
    set -x

    echo 'Uploading configuration...'
    scp -r ~/.spacemacs.d $MY_SH_EMACS_REMOTE_VPS:~/

    echo 'Remote upgrading emacs...'
    ssh $MY_SH_EMACS_REMOTE_VPS -t 'emacs'

    echo 'Rsync remote result...'
    rsync -ru --progress $MY_SH_EMACS_REMOTE_VPS:~/.emacs.d ~/

    set +x
}

emacs_stop_remote_vps_upgrade() {
    set -x

    pkill -f "ssh $MY_SH_EMACS_REMOTE_VPS -t emacs"

    set +x
}

alias upgrade_emacs_from_remote_vps='emacs_upgrade_from_remote_vps'
