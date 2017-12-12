# If not running interactively, don't do anything
case $- in
    *i*) ;;
    *) return;;
esac

# for access right
umask 022

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias h='history'
alias ls='ls -F --color=auto'
alias l='ls -CF'
alias ll='ls -alF'
alias la='ls -A'
alias t='tmux -2'
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
PS1='\[\033[01;32m\]\u'
PS1=$PS1'@\h\[\e[033;00m\]: '
PS1=$PS1'\[\e[30;1m\](\[\e[033;0m\]\j\[\e[30;1m\])'
PS1=$PS1'\[\033[00m\]:\[\033[01;34m\]\w'
PS1=$PS1'\n\[\033[00m\]\$ '
export PS1

# man page
manpath=(/opt/share/man \
         /usr/share/man \
        ~/local/share/man)
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

unset color_prompt force_color_prompt
