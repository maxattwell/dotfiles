#!/bin/bash
if [ "$1" == "light" ]; then
    cp ~/.config/waybar/light.css ~/.config/waybar/style.css
    cp ~/.config/sway/keys-l.png ~/.config/sway/current-bg.png
elif [ "$1" == "dark" ]; then
    cp ~/.config/waybar/dark.css ~/.config/waybar/style.css
    cp ~/.config/sway/keys-d.png ~/.config/sway/current-bg.png
fi
# Refresh Waybar and Hyprpaper to apply the new configuration
killall -SIGUSR2 waybar
