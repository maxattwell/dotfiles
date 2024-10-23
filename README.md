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
sudo dnf install emacs neovim sway kitty picom waybar vlc blueman zsh mako -y
```

### Repositories
- **[Doom](https://github.com/doomemacs/doomemacs?tab=readme-ov-file#install)**
- **[Zap](https://www.zapzsh.com/)** 
- **[Starship](https://starship.rs/#install-latest-version)** 

### Fonts
1. Download and extract from nerd fonts
2. Install
``` sh
for dir in JetBrainsMono Mononoki Overpass; do
  mv ~/Downloads/$dir ~/.local/share/fonts
done
```

## Link configuration files
``` sh
for dir in doom picom sway waybar kitty; do
  ln -s ~/dotfiles/$dir ~/.config/$dir
done
```

## Run doom sync

``` sh
.config/emacs/bin/doom sync
```

