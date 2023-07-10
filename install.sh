#!/usr/bin/env sh


#!/bin/bash

# Install zsh
sudo pacman -Syu zsh --noconfirm

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k

# Install i3 window manager
sudo pacman -Syu i3 --noconfirm

# Install Kitty terminal emulator
sudo pacman -Syu kitty --noconfirm

# Install Emacs
sudo pacman -Syu emacs --noconfirm

# Install Google Chrome
git clone --depth=1 https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
cd ..
yay -Syu google-chrome --noconfirm

# Install i3status
sudo pacman -Syu i3status --noconfirm

# Copy dot files (assuming you have your dot files in a separate directory)
cp -r dotfiles/* ~/

# Configure zsh as default shell
chsh -s $(which zsh)

# Activate changes without logging out
source ~/.zshrc

# Finalize installation
