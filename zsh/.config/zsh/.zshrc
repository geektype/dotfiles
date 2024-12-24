if [ "$TMUX" = "" ]; then tmux a; fi

autoload -U colors && colors
export CLICOLOR=1

source "$ZDOTDIR/functions.zsh"
source "$ZDOTDIR/environment.zsh"
source "$ZDOTDIR/secrets.zsh"
source "$ZDOTDIR/shelly.zsh"
source "$ZDOTDIR/alias.zsh"
source "$ZDOTDIR/conda.zsh"
source "$ZDOTDIR/neofetch.zsh"
source "$ZDOTDIR/nvm.zsh"
source "$ZDOTDIR/themes/chad.zsh-theme"
source "$ZDOTDIR/plugins.zsh" # Must be the last to get sourced




