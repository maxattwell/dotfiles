#!/bin/bash

# Define the radio station URL
URL="https://digitalstreams.mediaworks.nz/george_net/playlist.m3u8"

# Check if vlc is already running
if pgrep vlc > /dev/null; then
    # If it is, kill it to stop the radio
    pkill vlc
else
    # If it's not, start cvlc with the radio URL in the background
    cvlc $URL &
fi
