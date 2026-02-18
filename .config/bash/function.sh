##### ------------------------------------------------------------------
##### FUNCTIONS
##### ------------------------------------------------------------------

# Create directory and cd into it
mkcd() {
  mkdir -p "$1" && cd "$1" || return
}

# Find file and start nvim
vs() {
  local file
  file="$(fzf --preview 'bat --style=numbers --color=always {}')" || return
  [ -n "$file" ] && nvim "$file"
}
