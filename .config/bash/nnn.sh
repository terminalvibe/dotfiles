##### ------------------------------------------------------------------
##### NNN CONFIGURATIONS & GENERAL ALIASES
##### ------------------------------------------------------------------

# Shortcut alias for launching nnn file manager
if command -v nnn >/dev/null 2>&1; then

  # Create a short alias: use "n" to start nnn
  alias n='nnn'

  # Use Neovim as the default editor (used by nnn and other tools)
  export EDITOR=nvim

  # nnn behavior options:
  # a  - auto-enter on directory selection
  # A  - show hidden files
  # d  - show file details
  # D  - show directories first
  # e  - use text-based file opener
  # E  - use $EDITOR to open files
  # r  - open files in read-only mode
  # x  - do not use desktop opener
  export NNN_OPTS="aAdDeErx"

  # Custom color scheme for nnn (UI color configuration)
  export NNN_COLORS="4136"

  # Define plugin shortcuts:
  # p - preview-tui plugin
  # f - fzopen plugin (fzf-based file opener)
  # c - cd-on-quit (change directory to last visited on exit)
  export NNN_PLUG='p:preview-tui;f:fzopen;c:cd-on-quit'

fi
