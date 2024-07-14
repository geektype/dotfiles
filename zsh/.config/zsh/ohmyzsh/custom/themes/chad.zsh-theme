# CHAD - ZSH theme most suited to the sigma mindset.
# Adapted from OhMyZsh's `crunch` theme
# Author - Abdullah Ahmed

CHAD_BRACKET_COLOR="%{$fg[white]%}"
CHAD_TIME_COLOR="%{$fg[yellow]%}"
CHAD_AWS="%{$fg[yellow]%}"
CHAD_AWS_REGION="%{$fg[magenta]%}"
CHAD_DIR_COLOR="%{$fg[cyan]%}"
CHAD_GIT_BRANCH_COLOR="%{$fg[green]%}"
CHAD_GIT_CLEAN_COLOR="%{$fg[green]%}"
CHAD_GIT_DIRTY_COLOR="%{$fg[red]%}"

ZSH_THEME_GIT_PROMPT_PREFIX="$CHAD_BRACKET_COLOR:$CHAD_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $CHAD_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $CHAD_GIT_DIRTY_COLOR✗"

# Our elements:
CHAD_TIME_="$CHAD_BRACKET_COLOR{$CHAD_TIME_COLOR%T$CHAD_BRACKET_COLOR}%{$reset_color%}"
CHAD_DIR_="$CHAD_DIR_COLOR%~\$(git_prompt_info) "
CHAD_PROMPT="$CHAD_BRACKET_COLOR➭ "

# Put it all together!
PROMPT="$CHAD_TIME_$CHAD_RVM_$CHAD_DIR_$CHAD_PROMPT%{$reset_color%}"

RPROMPT='%{$reset_color%} ${AWS_PROFILE:+$CHAD_AWS󰸏%{$reset_color%\} $AWS_PROFILE} ${AWS_REGION:+[$CHAD_AWS_REGION$AWS_REGION%{$reset_color%\}]}'
