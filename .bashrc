# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# for access right
umask 022

# 
#stty stop undef

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

#xrdb -merge .Xresources

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias h='history'
alias ls='ls -F --color=auto'
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias x=exit
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


export LANG=ja_JP.UTF-8

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# append to the history file, don't overwrite it
shopt -s histappend

# for terminal cmdprompt
# 0;30~37 black,red,green,yellow,blue,purple,skyblue,lgray
# 1;30~37 dgray,lred,lgreen,lyellow,lblue,lpurple,lskyblue,white
# 00 invalid
PS1='\[\e[0;36m\]\u' # user name
PS1=$PS1'@\h\[\e[0;37m\]:' # host name
PS1=$PS1'\[\e[0;37m\](\[\e[1;35m\]\j\[\e[0;37m\])' # no of jobs
PS1=$PS1'\[\033[0;37m\]:\[\033[0;33m\]\w' # pwd
PS1=$PS1'\n\[\033[00m\]\$ ' # cmd
export PS1

# man page
manpath=(/opt/share/man \
         /usr/share/man \
        $HOME/local/share/man)
export MANPATH


# See bash(1) for more option
# Supplement Large and Small Spells
MAILCHECK=0
DIRSTACKSIZE=20
HISTSIZE=200
HISTFILESIZE=2000
HISTCONTROL=ignoreboth


# enviroment variables
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export JSERVER="localhost"


# load files path etc...
if [ -f  ~/.bash_local ]; then
    . ~/.bash_local
fi
# local aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

unset color_prompt force_color_prompt
