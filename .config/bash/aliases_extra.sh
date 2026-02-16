# Alias for managing dotfiles using a bare Git repository located in $HOME/.dotfiles
# Treats $HOME as the working tree, allowing version control of configuration files
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

##### ------------------------------------------------------------------
##### NVIM & GENERAL ALIASES
##### ------------------------------------------------------------------

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

##### ------------------------------------------------------------------
##### NNN & GENERAL ALIASES
##### ------------------------------------------------------------------

# Shortcut alias for launching nnn file manager
if command -v nnn >/dev/null 2>&1; then
  alias n='nnn'
fi

##### ------------------------------------------------------------------
##### HTOP & GENERAL ALIASES
##### ------------------------------------------------------------------

# System monitoring
if command -v htop >/dev/null 2>&1; then
  alias h='htop'
fi

##### ------------------------------------------------------------------
##### SSH & GENERAL ALIASES
##### ------------------------------------------------------------------

# Run ssh-agent
if ! pgrep -u "$USER" ssh-agent >/dev/null; then
  eval "$(ssh-agent -s)" >/dev/null
fi

# Check ssh installed and add alias
if command -v ssh >/dev/null 2>&1; then
  alias s='ssh'
fi

##### ------------------------------------------------------------------
##### DOCKER & GENERAL ALIASES
##### ------------------------------------------------------------------

# Check docker installed and add aliases
if command -v docker >/dev/null 2>&1; then

  # Short alias for docker CLI
  alias d='docker'

  # Shortcut for Docker Compose (v2 plugin syntax)
  alias dc='docker compose'

  # List running containers
  alias dps='docker ps'

  # List local Docker images
  alias di='docker images'
fi

##### ------------------------------------------------------------------
##### KUBERNETES & GENERAL ALIASES
##### ------------------------------------------------------------------

# Check Kubernetes installed and add aliases
if command -v kubectl >/dev/null 2>&1; then

  # Short alias for kubectl
  alias k='kubectl'

  # Get list of pods in the current namespace
  alias kgp='kubectl get pods'

  # Get list of services in the current namespace
  alias kgs='kubectl get svc'

  # Get all common Kubernetes resources in the current namespace
  alias kga='kubectl get all'

  # Apply a Kubernetes manifest file
  alias kaf='kubectl apply -f'

  # Show the current kubectl context
  alias kctx='kubectl config current-context'
fi
