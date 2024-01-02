git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting


if [ ! -d "$HOME/.config/tmux/plugins" ]; then
    mkdir -v $HOME/.config/tmux/plugins
fi
git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm

