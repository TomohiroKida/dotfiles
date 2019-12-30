#!/bin/bash

#--- options ---# 
OPT="$1"
if [[ "$OPT" != "n" && "$OPT" != "P" ]] ; then
	echo "$0 [nP]"
	exit 1
fi
DRY-RUN() {
    #shift
    if [ "$OPT" = "P" ]; then
        "$@"
    else
        echo "$@"
    fi
}

#--- vim ---#
DRY-RUN mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
DRY-RUN git clone https://github.com/Shougo/dein.vim.git \
        ~/.vim/dein/repos/github.com/Shougo/dein.vim
DRY-RUN mkdir -p ~/.vim/backup
DRY-RUN mkdir -p ~/.vim/after
DRY-RUN ln -sf $(pwd)/plugins.vim ~/.vim/
DRY-RUN ln -sf $(pwd)/ftplugin/ ~/.vim/after/ftplugin

#--- skel ---#
for fp in $(pwd)/skel/* ; do
	fn="$(basename $fp)"
	from="${fp}"
	to="~/.${fn}"
    # backup check
	if [ -e "${to}" ] ; then
		DRY-RUN diff "${from}" "${to}" ||\
                cp -L "${to}" "${to}".$(date +%F_%T).old
	fi
    DRY-RUN ln -sf ${from} ${to}
done
