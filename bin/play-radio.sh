#!/bin/bash

# Define the list of radio stations (name | url)
stations=(
    "George FM | https://digitalstreams.mediaworks.nz/george_net/playlist.m3u8"
    "Loca FM | https://s3.we4stream.com:2020/stream/locafm"
    "HOUSE NATION UK | https://streaming.radio.co/s06bd9d805/listen"
    "IBIZA GLOBAL CLASSICS | https://control.streaming-pro.com:8000/ibizaglobalclassics.mp3"
    "IBIZA GLOGAL RADIO | https://listenssl.ibizaglobalradio.com:8024/ibizaglobalradio.mp3"
    "Stop all stations | stop"
)

# Use dmenu to select a station
selection=$(printf "%s\n" "${stations[@]}" | dmenu -i -l 10 | cut -d '|' -f 2 | xargs)

# Stop any running VLC instance
if pgrep vlc > /dev/null; then
    pkill vlc
fi

# Start the selected station unless "Stop all stations" was selected
if [[ "$selection" != "stop" && -n "$selection" ]]; then
    cvlc "$selection" &
fi
