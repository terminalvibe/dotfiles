# Alias for managing dotfiles using a bare Git repository located in $HOME/.dotfiles
# Treats $HOME as the working tree, allowing version control of configuration files
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Shortcut alias for launching Neovim
alias v='nvim'

# Shortcut alias for launching Neovim whithout any plugins
alias vcl='nvim --clean'

# Shortcut alias for launching nnn file manager
alias n='nnn'

# System monitoring
alias h='htop'
alias dfh='df -h'
alias duh='du -sh *'
