#!/bin/bash
XDG_RUNTIME_DIR="/run/user/1000" notify-send -i /usr/share/icons/Sardi-Flat/scalable/apps/arcolinux-hello.svg "$(lynx -dump "https://arcolinux.com" | 
grep -i -A 11 "RECENT POSTS")" | XDG_RUNTIME_DIR="/run/user/1000" /usr/bin/mpv /Public/song-backup/Device-Connect.mp3