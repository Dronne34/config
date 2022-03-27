# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
export PATH=/bin/lscript:/bin/lscript:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export SPOTIPY_CLIENT_ID='de01aecdf8d04a3ba1c2b4510fa8a714'
export SPOTIPY_CLIENT_SECRET='8239cd861d6f4b8492210f6e2d4176b4'
#list
alias ll='ls --color=auto'
alias la='ls -a'
alias ls='ls -la'
alias l='ls' 					
alias l.="ls -A | egrep '^\.'"      

#fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias b='bash'
alias k="killall"
## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#readable output
alias df='df -h'

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#free
alias free="free -mt"

#continue download
alias wget="wget -c"

#search
alias search='pacman -Ss'
alias aur='trizen '

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu --noconfirm'
alias mk='makepkg -sri'

# trizen as aur helper - updates everything
alias pksyua="trizen -Syu --noconfirm"

#ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

#improve png
alias fixpng="find . -type f -name "*.png" -exec convert {} -strip {} \;"
alias mog="mogrify  -background none -format  png *.svg"
#add new fonts
alias fc='sudo fc-cache -fv'
alias fl='fc-list | grep -i '

#copy/paste all content of /etc/skel over to home folder - Beware
alias skel='cp -rf  ~/.backup/* ~'
alias rmskel=' rm -rf ~/.backup/*'
alias bkhome="sh /home/arch/Public/shell-backup/skel.sh"

#quickly kill conkies
alias kc='killall conky'

#hardware info --short
alias hw="hwinfo --short"
alias xd="xdotool selectwindow getwindowgeometry"

#backup
alias pklist="pacman -Qqe > pkglist.txt"
alias lsf="rclone lsf google-drive:Backup"
alias rcd="rclone deletefile  google-drive:Backup/Last-Backup.tar.gz -P"
#alias sync="rclone sync ~/Public/Last-Backup.tar.gz google-drive:Backup -P"
alias backup="cd ~/Public/shell-backup/ && ./backup.sh"
alias rmb="rm -rf ~/Public/Last-Backup.tar.gz"
alias compress="tar -cvzf last-date.tar.gz *"
#get fastest mirrors in your neighborhood 
alias mirror="sudo reflector -f 30 -l 30 --number 5 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

#mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

#shopt
shopt -s autocd # change to named directory
shopt -s cdspell # autocorrects cd misspellings
shopt -s cmdhist # save multi-line commands in history as single line
shopt -s dotglob
shopt -s histappend # do not overwrite history
shopt -s expand_aliases # expand aliases

#youtube-dl
alias yta-mp3='youtube-dl --extract-audio  -f bestaudio --audio-format mp3 --embed-thumbnail --prefer-ffmpeg --output "%(title)s.%(ext)s" '
#alias yta-aac="youtube-dl --extract-audio --audio-format aac "
#alias yta-best="youtube-dl --extract-audio --audio-format best "
#alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
#alias yta-opus="youtube-dl --extract-audio --audio-format opus "
#alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
#alias yta-wav="youtube-dl --extract-audio --audio-format wav "
#alias ytv-best="youtube-dl -f bestvideo+bestaudio "

#alias media

alias ast="acestream-launcher"
alias ping='ping google.com -c5'
alias mp='mpv --sub-bold --sub-color=#FF720F --osd-color=#2CBEB6'
alias sm='smplayer -size 680 370'
alias nc="ncmpcpp"
alias play='mplayer -msgcolor -msgmodule -nolirc'
alias playlist='mplayer -msgcolor -msgmodule -nolirc -playlist '


# get error messages from journalctl
alias jctl="journalctl -p 3 -xb"

#Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -100"

#Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
alias trash='sudo rm -rf ~/.local/share/Trash/*'
alias temp='sudo rm -rf /tmp/*'
alias du="du -sh /var/cache/pacman/pkg/"

#copy files  
alias cp='rsync -zvhP'
alias mv='rsync -zvhP --remove-source-files'

#qemu-system#
alias sda='sudo qemu-system-x86_64 -enable-kvm -m 4G -vga std  -drive file=/dev/sda,cache=none,if=virtio -boot d'
alias sdc='sudo qemu-system-x86_64 -enable-kvm -m 4G -vga std  -drive file=/dev/sdc,cache=none,if=virtio -boot d'
alias sdb='sudo qemu-system-x86_64 -enable-kvm -m 4G -vga std  -drive file=/dev/sdb,cache=none,if=virtio -boot d'


#SYSTEM#
alias zz='lsblk -f'
alias mcc='sudo macchanger -m 12:23:45:A5:y7:45 wlp0s20u1'
alias sys='conky -c ~/.config/conky/conkyrc/AUR-Allinone.conkyrc -q'
alias clock='conky -c ~/.config/conky/conkyrc/ArchGotham.conkyrc -q'
alias spot='conky -c ~/.config/conky/conky-spotify/conky-spotify -q'
alias screen='scrcpy --max-size 1024'
alias re='sudo systemctl reboot -f'
alias po='sudo systemctl poweroff'
alias pwg="pwgen 12  -1 -n -s"
alias cmi="./configure && make && sudo make install"

alias fat='sudo mkfs.fat -F32 -v -I -n USB /dev/sda'
alias fatb='sudo mkfs.fat -F32 -v -I /dev/sdb'
alias fatc='sudo mkfs.fat -F32 -v -I /dev/sdc'

alias usb='systemctl --user restart gvfs-udisks2-volume-monitor'
alias reload="sudo systemctl restart NetworkManager.service"
alias start="sudo systemctl start NetworkManager.service"
alias stop="sudo systemctl stop NetworkManager.service"
alias mls="sudo multibootusb"
alias ctl="systemctl"
alias su="sudo su"
alias cl='clear'
alias ifc="ifconfig"
#neofetch
ufetch
#screenfetch
#cowfortune  
#fish        
EDITOR=nano;
export VISUAL=nano;
export HISTTIMEFORMAT="%F %T"
export QT_QPA_PLATFORMTHEME=qt5ct;
export _JAVA_AWT_WM_NONREPARENTING=1;
export PATH="${PATH}:${HOME}/.local/bin/"

#ssh
alias ev="eval "$(ssh-agent -s)" " 

[ -n "$XTERM_VERSION" ] && transset-df --id "$WINDOWID" >/dev/null
export PATH=/bin/lscript:/bin/lscript:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl
# Get color support for 'less'
export LESS="--RAW-CONTROL-CHARS"

# Use colors for less, man, etc.
[[ -f ~/.LESS_TERMCAP ]] && . ~/.LESS_TERMCAP
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
  ### ARCHIVE EXTRACTION
# usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   unzstd $1    ;;      
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
alias tm="sh ~/Google-Drive/shell-backup/theme.sh -i"
export THEME_HISTFILE=~/.theme_history
[ -e "$THEME_HISTFILE" ] && ~/Google-Drive/shell-backup/theme.sh "$(~/Google-Drive/shell-backup/theme.sh -l|tail -n1)"

#Binds C-o to the previously active theme.
#bind -x '"\x0f":"theme.sh $(theme.sh -l|tail -n2|head -n1)"' 
#export PATH="${PATH}:${HOME}/.local/bin/"
#echo -e -n "\x1b[\x30 q" # changes to blinking block
#echo -e -n "\x1b[\x31 q" # changes to blinking block also
#echo -e -n "\x1b[\x32 q" # changes to steady block
echo -e -n "\x1b[\x33 q" # changes to blinking underline
#echo -e -n "\x1b[\x34 q" # changes to steady underline
#echo -e -n "\x1b[\x35 q" # changes to blinking bar
#echo -e -n "\x1b[\x36 q" # changes to steady bar