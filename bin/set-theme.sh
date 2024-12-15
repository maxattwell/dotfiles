#!/bin/bash
if [ "$1" == "light" ]; then
    emacsclient -e "(load-theme 'doom-gruvbox-light' t)"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-light"
    hyprctl hyprpaper wallpaper "DP-3,~/dotfiles/backgrounds/keys-l.png"
    hyprctl hyprpaper wallpaper "DP-2,~/dotfiles/backgrounds/keys-l.png"
    cp ~/.config/waybar/light.css ~/.config/waybar/style.css
    cp ~/dotfiles/backgrounds/keys-l.png ~/.config/sway/current-bg.png
elif [ "$1" == "dark" ]; then
    emacsclient -e "(load-theme 'doom-gruvbox' t)"
    gsettings set org.gnome.desktop.interface color-scheme "prefer-dark"
    hyprctl hyprpaper wallpaper "DP-3,~/dotfiles/backgrounds/keys-d.png"
    hyprctl hyprpaper wallpaper "DP-2,~/dotfiles/backgrounds/keys-d.png"
    cp ~/.config/waybar/dark.css ~/.config/waybar/style.css
    cp ~/dotfiles/backgrounds/keys-d.png ~/.config/sway/current-bg.png
fi
# Refresh Waybar and Hyprpaper to apply the new configuration
killall -SIGUSR2 waybar
