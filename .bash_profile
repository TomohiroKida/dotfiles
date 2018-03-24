#LANG=ja_JP.UTF-8
#export

PATH=$PATH:/opt/bin
PATH=$PATH:/usr/bin
PATH=$PATH:/usr/sbin
PATH=$PATH:/bin
PATH=$PATH:/sbin

export PATH

#xrdb -merge /home/users/kida/.Xdefaults

source ~/.bashrc

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
