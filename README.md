# Terminal Vibe

This repository contains configurations designed to improve productivity,
simplify navigation, and streamline daily development workflows.

---

## Dotfiles Management

### Install dependencies

Debian/Ubuntu

```bash
sudo apt update
sudo apt install -y git neovim nnn htop tmux
```

Arch

```bash
sudo pacman -Syu git neovim nnn htop tmux
```

Fedora

```bash
sudo dnf install -y git neovim nnn htop tmux
```

### Install dotafiles

Back up the existing .bashrc file and install the .dotfiles repository by executing the following commands in your shell:

```bash
# Backup .bashrc file
cp ~/.bashrc ~/.bashrc.bak
# Install .dotfiles
git clone --bare https://github.com/terminalvibe/dotfiles.git $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Force overwrite existing files if they already exist.
dotfiles checkout -f

# When I run dotfile status , don’t show untracked files
dotfiles config --local status.showUntrackedFiles no
```

Manage dotfiles using a bare Git repository located at:

```bash
$HOME/.dotfiles
```

This setup:

* Treats $HOME as the working directory
* Allows version control of configuration files directly from the home directory
* Avoids nested .git folders inside $HOME
