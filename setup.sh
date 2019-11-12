#!/bin/bash

# flags
FORCE_MODE=1
shdir="$(cd $(dirname $0) && pwd)" # where this exists
cd ${shdir}

# helpers
_usage() {
	echo "$0 [--usage]"
	echo "$0 [-f|--force] update|[<args>]"
    echo "args: "$(grep "^setup_" $0 |\
                    sed  's/setup_\(.*\)().*/\1/' |\
                    tr '\n' ' ')
	echo
	echo "e.g.: \`$0 dot git\`"
}

ask_exec() {
	echo -n "$1 [Y/n]: "
	shift
	read answer
	if [ "$answer" != "n" -a "$answer" != "N" ] ; then
		"$@"
	fi
}

make_symlink() {
	echo "  Creating link: $1 -> $2"
	#target="$(dirname $2)/$(basename $1)"
	target="$2"
	if [ -e "${target}" -o -L "${target}" ] ; then
		log_subsection "$(basename $1)"
        if [ $FORCE_MODE = '0' ] ; then
            ln -sf "$1" "$2"
        else 
            ask_exec "file ${target} already exists. rename it and create symlink of new one [Y/n]?: " mv "$target" "${target}.old"
		    ln -s "$1" "$2"
        fi
	else
		echo "${target}"" is not exist"
    fi
}

log_section() {
	echo -e "\e[01;93m==> $@\e[0m"
}
log_subsection() {
	echo -e "\e[01;95m==> $@\e[0m"
}

# main
# linking files of skel dir.
setup_dot() {
	log_section "Setting up dotfiles ..."
	skeldir="${shdir}/skel"
	for filepath in ${skeldir}/* ; do
		filename="$(basename $filepath)"
		if [ -f $filepath -o -d $filepath ] ; then
			make_symlink "${filepath}" "${HOME}/.${filename}"
		fi
	done
}
setup_emacs() {
	log_section "Setting up ~/.emacs.d/ ..."
	emacs --batch -q -l ${shdir}/skel/emacs.d/lisp/packages-list.el
}
setup_vim() {
	log_section "Setting up ~/.vim/ ..."
}

setup_initial() {
	log_section "Running in interactive mode"

	ask_exec "-> Setup dotfiles?" setup_dot
	
	#if [ ! -e $HOME/.gitconfig ] ; then
	#	ask_exec "-> Use .gitconfig?" setup_git
	#fi
}

update_all() {
	log_section "Running in Update"
	log_subsection "update emacs packages"
	emacs --batch -q -l ${shdir}/skel/emacs.d/scripts/upgrade-packages.el
}

if [ $# -eq 0 ] ; then
	if [ $(basename "$0") != "setup.sh" ] ; then
		_usage
	else
		setup_initial
	fi
else
	while [ $# -gt 0 ] ; do
		case "$1" in
			-h|--help|--usage)
				_usage
				exit 0
				;;
			-f|--force)
				FORCE_MODE=0
				shift
				;;
			update)
				update_all
				exit 0
				;;
			*)
				setup_$1
				shift
				;;
		esac
	done
fi
