##### ------------------------------------------------------------------
##### FZF CONFIGURATION & OPTIONS
##### ------------------------------------------------------------------

# Load fzf key bindings and completion if available
# Paths may differ depending on your distro or installation method
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f /usr/share/fzf/key-bindings.bash ] && source /usr/share/fzf/key-bindings.bash
[ -f /usr/share/fzf/completion.bash ] && source /usr/share/fzf/completion.bash

# Global fzf UI configuration
export FZF_DEFAULT_OPTS="
--height=40%                      # Popup height
--layout=reverse                  # Prompt at top, results below
--info=inline                     # Show match info inline
--border=rounded                  # Rounded border
--margin=1
--padding=1
--prompt='❯ '                     # Prompt symbol
--pointer='▶'                     # Selected item pointer
--marker='✓'                      # Multi-select marker
--cycle                           # Allow cyclic scrolling
--bind=ctrl-u:preview-half-page-up,ctrl-d:preview-half-page-down
--bind=ctrl-f:preview-page-down,ctrl-b:preview-page-up
--bind=alt-a:toggle-all           # Toggle select all
"

__fzf_insert_paths() {
  local -a items
  local insert

  mapfile -t items < <(fd . --hidden --type f --type d |
    fzf -m --preview '
      if [ -d {} ]; then
       tree -C {} | head -200
      else
       bat -p {} 2>/dev/null || cat {}
      fi
    ')

  ((${#items[@]})) || return 0

  printf -v insert '%q ' "${items[@]}"
  insert=${insert% } # убрать последний пробел

  READLINE_LINE="${READLINE_LINE:0:$READLINE_POINT}$insert${READLINE_LINE:$READLINE_POINT}"
  READLINE_POINT=$((READLINE_POINT + ${#insert}))
}

bind -x '"\C-f": __fzf_insert_paths'
