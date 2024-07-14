process_input() {
  if [[ $BUFFER == \#* ]]; then
    local argument="${BUFFER#\#}"
    echo ""
    shelly "$argument"
    BUFFER=""
    zle reset-prompt    
  else
      zle .accept-line
  fi

}

zle -N process_input
bindkey '^M' process_input
