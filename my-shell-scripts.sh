MY_SHELL_SCRIPTS=${MY_SHELL_SCRIPTS:-"$HOME/.oh-my-shell-scripts"}

for plugin in emacs python; do
    source $MY_SHELL_SCRIPTS/plugins/$plugin/$plugin.plugin.sh
done
