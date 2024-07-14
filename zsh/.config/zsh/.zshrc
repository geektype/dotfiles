if [ "$TMUX" = "" ]; then tmux a; fi

# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

ZSH_THEME="chad"


# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"


plugins=(aws git terraform  zsh-autosuggestions zsh-syntax-highlighting)

SHOW_AWS_PROMPT=false

source $ZSH/oh-my-zsh.sh
source "$ZDOTDIR/secrets.sh"
source "$ZDOTDIR/shelly.sh"
source "$ZDOTDIR/alias.sh"

[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

export PATH="$HOME/.local/bin:${PATH}"
export PATH="$HOME/go/bin:${PATH}"
export PATH="$HOME/.docker/bin:$PATH"

export PICO_SDK_PATH=$HOME/pico/pico-sdk

export XDG_CONFIG_HOME=$HOME/.config
export SDKROOT="`xcrun --show-sdk-path`"


NEOFETCH_FLAG_PATH="/private/tmp/$(whoami)/neofetch"
NEOFETCH_FLAG="$NEOFETCH_FLAG_PATH/flag"

if [[ -n $TMUX && ! -f $NEOFETCH_FLAG ]]; then
    mkdir -p $NEOFETCH_FLAG_PATH
    touch $NEOFETCH_FLAG
    neofetch
fi

