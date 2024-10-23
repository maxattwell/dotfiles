# Dotfiles
Collection of configuration files for Max Attwell.

## Git setup 
1. Login to git
```sh
git config --global user.name "Max Attwell"
git config --global user.email "max.attwell@hotmail.com"
```

2. Create ssh key
``` sh
# Generate a new ssh key for github
ssh-keygen -t ed25519 -C max.attwell@hotmail.com

# Start ssh agent
eval "$(ssh-agent -s)"

# Add key to ssh agent
ssh-add ~/.ssh/id_ed25519
```

3. Add `~/.ssh/config`

```yaml
Host github.com
  User git
  Hostname github.com
  PreferredAuthentications publickey
  IdentityFile /home/max/.ssh/id_ed25519
```
## Download dotfiles

``` sh
git clone git@github.com:maxattwell/dotfiles.git
```

## Install dependencies 

### Packages (fedora 23/10/24)
``` sh
sudo dnf install emacs neovim sway kitty picom waybar vlc blueman zsh
```

### Repositories
- **Doom emacs:** (link here)[https://github.com/doomemacs/doomemacs?tab=readme-ov-file#install]
- **Zap:** (link here)[https://www.zapzsh.com/]
- **Starship shell:** (link here)[https://starship.rs/#install-latest-version]

### Fonts
1. Download and extract from nerd fonts
2. Install
``` sh
mv ~/Downloads/JetBrainsMono ~/.local/share/fonts
mv ~/Downloads/Mononoki ~/.local/share/fonts
mv ~/Downloads/Overpass ~/.local/share/fonts
```

## Link configuration files
``` sh
ln -s ~/dotfiles/doom .config/doom
ln -s ~/dotfiles/picom .config/picom
ln -s ~/dotfiles/sway .config/sway
ln -s ~/dotfiles/waybar .config/waybar
ln -s ~/dotfiles/kitty .config/kitty
```

## Run doom sync

``` sh
.config/emacs/bin/doom sync
```

