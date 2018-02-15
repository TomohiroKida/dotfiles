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

xrdb -merge .Xresources

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

alias ..='cd ..'


export LANG=ja_JP.UTF-8

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# append to the history file, don't overwrite it
shopt -s histappend

# for terminal cmdprompt
PS1='\[\e[01;32m\]\u' # user name
PS1=$PS1'@\h\[\e[033;00m\]: ' # host name
PS1=$PS1'\[\e[30;1m\](\[\e[033;0m\]\j\[\e[30;1m\])' # no of jobs
PS1=$PS1'\[\033[00m\]:\[\033[01;34m\]\w' # pwd
PS1=$PS1'\n\[\033[00m\]\$ ' # cmd
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

unset color_prompt force_color_prompt
