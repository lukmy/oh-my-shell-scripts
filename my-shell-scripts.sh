MY_SHELL_SCRIPTS=${MY_SHELL_SCRIPTS:-"$HOME/.oh-my-shell-scripts"}

# MY_SHELL_DEFAULT_PLUGINS=(emacs python)
# MY_SHELL_PLUGINS=${MY_SHELL_PLUGINS:-$MY_SHELL_DEFAULT_PLUGINS}

for plugin in ${MY_SHELL_PLUGINS[@]}; do
    source $MY_SHELL_SCRIPTS/plugins/$plugin/$plugin.plugin.sh
done
