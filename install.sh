if [ ! -d "$HOME/.config/zsh" ]; then
    mkdir $HOME/.config/zsh
    echo "Created ZSH directory at $HOME/.config/zsh"
fi

echo "Stowing zsh..."
stow zsh/

echo "Stowing vim..."
stow vim/

if [ ! -d "$HOME/.config/tmux" ]; then
    mkdir $HOME/.config/zsh
    echo "Created tmux directory at $HOME/.config/tmux"
fi

echo "Stowing tmux..."
stow tmux/

echo "Stowing iTerm2..."
stow iterm2/

echo "Installing OhMyZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
