#!/bin/bash
set -e
DIR="~/Google-Drive/wallpaper-backup/"
PIC=$(ls $DIR* | shuf -n1)
gsettings set org.gnome.desktop.background picture-uri file://${PIC}
xfdesktop -R -N
# XFCE
command -v xfconf-query >/dev/null 2>&1
rc=$?
if [[ $rc = 0 ]] ; then
    for i in $(xfconf-query -c xfce4-desktop -p /backdrop -l | grep -E -e "screen.*/monitor.*image-path$" -e "screen.*/monitor.*/last-image$"); do
        xfconf-query -c xfce4-desktop -p "$i" -n -t string -s "" 2> /dev/null
        xfconf-query -c xfce4-desktop -p "$i" -s "" 2> /dev/null
        xfconf-query -c xfce4-desktop -p "$i" -s "$PIC" 2> /dev/null
    done
fi
