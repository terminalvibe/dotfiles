# Alias for managing dotfiles using a bare Git repository located in $HOME/.dotfiles
# Treats $HOME as the working tree, allowing version control of configuration files
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Neovim
# Check Neovim installed in /opt directory
if [ -x /opt/nvim-linux-x86_64/bin/nvim ]; then
  export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
fi

if command -v nvim >/dev/null 2>&1; then
  # Shortcut alias for launching Neovim
  alias v='nvim'
  # Shortcut alias for launching Neovim whithout any plugins
  alias vcl='nvim --clean'
fi

# Shortcut alias for launching nnn file manager
if command -v nnn >/dev/null 2>&1; then
  alias n='nnn'
fi

# System monitoring
if command -v htop >/dev/null 2>&1; then
  alias h='htop'
fi
