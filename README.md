# Terminal Vibe

This repository contains configurations designed to improve productivity,
simplify navigation, and streamline daily development workflows.

---

## Dotfiles Management

### Install dependencies

Debian/Ubuntu

```bash
sudo apt update
sudo apt install -y git neovim nnn htop
```

Arch

```bash
sudo pacman -Syu git neovim nnn htop
```

Fedora

```bash
sudo dnf install -y git neovim nnn htop
```

### Install dotafiles

To install simply execute in shell

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles clone https://github.com/terminalvibe/dotfiles.git
```

Manages dotfiles using a bare Git repository located at:

```bash
$HOME/.dotfiles
```

This setup:

* Treats $HOME as the working directory
* Allows version control of configuration files directly from the home directory
* Avoids nested .git folders inside $HOME
