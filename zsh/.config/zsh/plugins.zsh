PLUGIN_DIR=$ZDOTDIR/plugins

SHOW_AWS_PROMPT=false
source "$PLUGIN_DIR/aws.zsh"
source "$PLUGIN_DIR/terraform.zsh"
source "$PLUGIN_DIR/git.zsh"

if [ -d "$PLUGIN_DIR/external/zsh-autosuggestions" ]; then
    source "$PLUGIN_DIR/external/zsh-autosuggestions/zsh-autosuggestions.zsh"
else
    echo "ZSH-AUTOCOMPLETE not installed"
fi

# Must be the last to get sourced
if [ -d "$PLUGIN_DIR/external/zsh-syntax-highlighting" ]; then
    source "$PLUGIN_DIR/external/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
else
    echo "zsh-syntax-highlighting not installed"
fi
