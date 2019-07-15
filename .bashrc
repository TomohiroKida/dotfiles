# If not running interactively, don't do anything
case $- in
    *i*) ;; *) return;;
esac

# for access right
# dir 777 - 022 = 755
# fil 666 - 022 = 644
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
alias x=exit
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
#alias emacs='emacs -nw'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
# append to the history file, don't overwrite it
shopt -s histappend

# for terminal cmdprompt
# 0;30-37 black, red, green, yellow, blue, purple, skyblue,lgray
# 1;30-37 dgray,lred,lgreen,lyellow,lblue,lpurple,lskyblue,white
# 00 invalid
PS1='\[\e[1;36m\]\u'                               # user name
PS1=$PS1'@\h\[\e[1;37m\]:'                         # host name
PS1=$PS1'\[\e[0;37m\]\[(\e[1;35m\]\j\[\e[0;37m\])' # num of jobs
PS1=$PS1'\[\033[1;37m\]:\[\033[1;33m\]\w'          # pwd
PS1=$PS1'\n\[\033[00m\]\$ '                        # cmd
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
export LANG=ja_JP.UTF-8
export XMODIFIERS="@im=ibus"
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export JSERVER="localhost"
# dont use Ctrl-D for exit
export IGNOREEOF=100

# LOAD LOCAL FILE () {
# For sourcing bash local file if you change PATH and LD_LIBRARY_PATH, etc.
# Prevent your PATH and LD_LIBRARY from increasing path by "source .bashrc" #! WARNING ! 
#! MUST define variable of "$def_path" and "$def_library_path" to .bash_profiile
if [ -n "$def_path" ]; then
    export PATH=$def_path
fi
export LD_LIBRARY_PATH=$def_ld_library_path
if [ -f  ~/.bash_local ]; then
    . ~/.bash_local
fi
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
# }

unset color_prompt force_color_prompt
