
###HOME###

#rsync -av  ~/Videos /run/media/$USER/BACKUP/HUAWEI/HOME 
rsync -av  ~/Public /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/Pictures /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/Documents /run/media/$USER/BACKUP/HUAWEI/HOME
#rsync -av  ~/Templates /run/media/$USER/BACKUP/HUAWEI/HOME
#rsync -av  ~/Downloads /run/media/$USER/BACKUP/HUAWEI/HOME
#rsync -av  ~/Desktop /run/media/$USER/BACKUP/HUAWEI/HOME
#rsync -av   ~/.icons /run/media/$USER/BACKUP/HUAWEI/HOME
#rsync -av  ~/Music /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.xinitrc /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.Xclients /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.zshrc /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.Xresources /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.profile /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.gtkrc-2.0 /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.dmrc /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.dmenurc /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.dir_colors /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.bashrc /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.bash_profile /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.fonts /run/media/$USER/BACKUP/HUAWEI/HOME
rsync -av  ~/.urxvt /run/media/$USER/BACKUP/HUAWEI/HOME

###Google-Drive###

#rsync -av  ~/Google-Drive /run/media/$USER/BACKUP/HUAWEI

###CONFIG###
rsync -av   ~/.config/nano /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/i3 /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/htop /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/cava /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/manjaro /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/i3status /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/sxhkd /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/rofi /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/pulse /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/polybar /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/ncmpcpp /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/mpd /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/Thunar /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/sublime-text /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/pamac /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/qt5ct /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/gtk-3.0 /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/xfce4 /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/Kvantum /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/ranger /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/dunst /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/nitrogen /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/volumeicon /run/media/$USER/BACKUP/HUAWEI/CONFIG
rsync -av   ~/.config/hexchat /run/media/$USER/BACKUP/HUAWEI/CONFIG

notify-send -i redo "Backup Done!"