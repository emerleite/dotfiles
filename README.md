# Dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Overview

This repository contains configurations for various command-line tools and applications, organized as modular packages that can be independently installed using GNU Stow.

## Packages

- **bat** - Configuration for [bat](https://github.com/sharkdp/bat), a cat clone with syntax highlighting
- **kitty** - Terminal emulator configuration including Dracula theme and custom settings
- **nvim** - Neovim configuration with LazyVim setup
- **zellij** - Configuration for [Zellij](https://zellij.dev/), a terminal workspace manager
- **zsh** - Zsh shell configuration with support for machine-specific aliases

## Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/)
- Git

Install GNU Stow:

```bash
# macOS
brew install stow

# Debian/Ubuntu
sudo apt install stow

# Arch Linux
sudo pacman -S stow
```

## Installation

1. Clone this repository to your home directory:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
```

2. Install packages using GNU Stow:

```bash
# Install all packages
stow */

# Or install specific packages
stow zsh
stow nvim
stow kitty
stow bat
stow zellij
```

This will create symlinks from your home directory to the files in this repository.

## Usage

### Installing a Package

To install (symlink) a specific package:

```bash
stow <package-name>
```

### Uninstalling a Package

To remove the symlinks for a package:

```bash
stow -D <package-name>
```

### Restowing a Package

To update symlinks after making changes:

```bash
stow -R <package-name>
```

## Structure

Each package follows the GNU Stow convention where the directory structure mirrors your home directory:

```
dotfiles/
├── zsh/
│   └── .zshrc
├── nvim/
│   └── .config/
│       └── nvim/
│           └── init.lua
└── kitty/
    └── .config/
        └── kitty/
            └── kitty.conf
```

When you run `stow zsh`, it creates a symlink at `~/.zshrc` pointing to `~/.dotfiles/zsh/.zshrc`.

## Machine-Specific Configuration

The zsh configuration supports machine-specific aliases and settings through `.zshrc_aliases` file, which can contain host-specific configurations and secrets.

## Features

- Modular configuration management
- Easy to install/uninstall individual packages
- Version controlled configurations
- Support for machine-specific customizations
- Clean separation of concerns

## License

Personal configuration files - use at your own discretion.
