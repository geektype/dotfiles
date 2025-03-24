export XDG_CONFIG_HOME=$HOME/.config
export SDKROOT="`xcrun --show-sdk-path`"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/zig:$PATH"
export PATH="$HOME/.docker/bin:$PATH"
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

export PICO_SDK_PATH=$HOME/pico/pico-sdk
