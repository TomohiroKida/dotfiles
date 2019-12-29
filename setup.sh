#!/bin/bash

if [[ "$1" != "n" && "$1" != "P" ]] ; then
	echo "$0 [nP]"
	exit 1
fi

### vim
mkdir -p ~/.vim/dein/repos/github.com/Shougo/dein.vim
#git clone https://github.com/Shougo/dein.vim.git \
#    ~/.vim/dein/repos/github.com/Shougo/dein.vim
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/after
if [ "$1" = "P" ]; then
    ln -sf $(pwd)/plugins.vim ~/.vim/
    ln -sf $(pwd)/ftplugin/ ~/.vim/after/ftplugin
else 
    echo "ln -sf $(pwd)/plugins.vim ~/.vim/"
    echo "ln -sf $(pwd)/ftplugin/ ~/.vim/after/ftplugin"
fi

### skel
for fp in $(pwd)/skel/* ; do
	fn="$(basename $fp)"
	from="${fp}"
	to="~/.${fn}"
	if [ -e ${to} ] ; then
		if [ "$1" = "P" ]; then
			diff ${from} ${to} ||
			cp -L ${to} ${to}.$(date +%F_%T).old
		else
			diff ${from} ${to} ||
			echo "cp -L ${to} ${to}.$(date +%F_%T).old"
		fi
	fi
	if [ "$1" = "P" ]; then
		ln -sf ${from} ${to}
	else
		echo "ln -sf ${from} ${to}"
	fi
done
