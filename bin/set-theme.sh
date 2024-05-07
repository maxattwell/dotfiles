#!/bin/bash
if [ "$1" == "light" ]; then
    cp ~/.config/waybar/light.css ~/.config/waybar/style.css
    # hyprctl hyprpaper wallpaper "DP-1,/usr/share/backgrounds/gnome/keys-l.jpg"
    # hyprctl hyprpaper wallpaper "DP-2,/usr/share/backgrounds/gnome/keys-l.jpg"
elif [ "$1" == "dark" ]; then
    cp ~/.config/waybar/dark.css ~/.config/waybar/style.css
    # hyprctl hyprpaper wallpaper "DP-1,/usr/share/backgrounds/gnome/keys-d.jpg"
    # hyprctl hyprpaper wallpaper "DP-2,/usr/share/backgrounds/gnome/keys-d.jpg"
fi
# Refresh Waybar and Hyprpaper to apply the new configuration
killall -SIGUSR2 waybar
