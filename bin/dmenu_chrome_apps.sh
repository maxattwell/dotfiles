#!/bin/bash

# Get the list of Chrome web apps from the .desktop files
chrome_apps=$(grep -l "chrome" ~/.local/share/applications/*.desktop | xargs -I {} grep -H "Name=" {} | awk -F '=' '{print $2}')

# Get the list of all apps from dmenu_path
all_apps=$(dmenu_path)

# Combine the two lists
combined_apps=$(echo -e "$all_apps\n$chrome_apps")

# Use dmenu to select an application
selected_app=$(echo "$combined_apps" | dmenu -i -p "Select app:")

# If no selection was made, exit
if [ -z "$selected_app" ]; then
    exit 1
fi

# Check if it's a Chrome app
exec_command=$(grep -l "Name=$selected_app" ~/.local/share/applications/*.desktop | xargs -I {} grep -m 1 "Exec=" {} | sed 's/Exec=//g' | sed 's/ %U//')

# If a Chrome app exec command is found, run it
if [ -n "$exec_command" ]; then
    $exec_command &
else
    # If it's not a Chrome app, try to run it via swaymsg
    swaymsg exec -- "$selected_app" &
fi
