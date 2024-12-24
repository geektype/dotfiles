NEOFETCH_FLAG="/private/tmp/$(whoami)/neofetch/flag"

if [[ -n $TMUX && ! -f $NEOFETCH_FLAG ]]; then
    mkdir -p $NEOFETCH_FLAG_PATH
    touch $NEOFETCH_FLAG
    neofetch
fi
