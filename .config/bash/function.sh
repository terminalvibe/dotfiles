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
  file="$(
    fzf \
      --preview "bat --theme=1337 --style=numbers --color=always -- {} || cat {}" \
      --preview-window=right:60%
  )" || return

  [[ -n "$file" && -f "$file" ]] && nvim -- "$file"
}

# Clever cat function
cat() {
  local file mime

  for file in "$@"; do
    [[ -e "$file" ]] || {
      command cat -- "$file"
      continue
    }

    mime=$(file --mime-type -b "$file" 2>/dev/null)

    case "$mime" in
    image/*)
      if [[ -n "$KITTY_WINDOW_ID" ]]; then
        kitty +kitten icat -- "$file"
      else
        echo "Image: $file"
      fi
      ;;
    text/* | application/json)
      if command -v bat >/dev/null 2>&1; then
        bat --theme=1337 -p --color=always -- "$file"
      else
        command cat -- "$file"
      fi
      ;;
    *)
      command cat -- "$file"
      ;;
    esac
  done
}
