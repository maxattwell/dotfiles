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
sudo dnf install emacs neovim hyprland hyprpaper sway kitty picom waybar vlc blueman zsh mako wofi google-chrome fzf -y
```

### Repositories
- **[Doom](https://github.com/doomemacs/doomemacs?tab=readme-ov-file#install)**

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
for dir in doom picom sway hypr waybar kitty mako; do
  ln -s ~/dotfiles/$dir ~/.config/$dir
done
```

## Link theme switcher services and enable/start

``` sh
ln -s ~/dotfiles/bin/set-theme@.service .config/systemd/user
ln -s ~/dotfiles/bin/set-theme@light.timer .config/systemd/user
ln -s ~/dotfiles/bin/set-theme@dark.timer .config/systemd/user

systemctl --user enable set-theme@light.timer
systemctl --user start set-theme@light.timer

systemctl --user enable set-theme@dark.timer
systemctl --user start set-theme@dark.timer
```

## Zsh setup
1. Change shell to zsh
2. Add to top of `.zshrc`

``` sh
source $HOME/dotfiles/zsh/max.zshrc
```

## Run doom sync

``` sh
.config/emacs/bin/doom sync
```

