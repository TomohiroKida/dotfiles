#LANG=ja_JP.UTF-8

export PATH=$PATH:/opt/bin

# For .bash_set_local_path
# Save your $PATH and $LD_LIBRARY_PATH before soucing .bashrc and .bash_local
export def_path=$PATH
export def_ld_library_path=$LD_LIBRARY_PATH

source ~/.bashrc

#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
