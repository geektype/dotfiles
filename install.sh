if [ ! -d "$HOME/.config/zsh" ]; then
    mkdir $HOME/.config/zsh
    echo "Created ZSH directory at $HOME/.config/zsh"
fi

echo "Stowing zsh..."
stow zsh/

echo "Stowing vim..."
stow vim/

if [ ! -d "$HOME/.config/tmux" ]; then
    mkdir $HOME/.config/tmux
    echo "Created tmux directory at $HOME/.config/tmux"
fi

echo "Stowing tmux..."
stow tmux/

if [ ! -d "$HOME/.config/ghostty" ]; then
    mkdir $HOME/.config/ghostty
    echo "Created ghostty directory at $HOME/.config/tmux"
fi

echo "Stowing Ghostty..."
stow ghostty/


export ZDOTDIR="$HOME/.config/zsh"
export ZSH="$HOME/.config/zsh/ohmyzsh"

echo "Installing OhMyZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc
