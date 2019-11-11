#!/bin/bash -x
# -f --force
# -s --symbolic 

# -p --parents
mkdir -p $HOME/.vim/after
mkdir -p $HOME/.vim/backup
mkdir -p $HOME/.emacs.d/my_els

ln -fs $(pwd)/.bash_profile $HOME
ln -fs $(pwd)/.bashrc       $HOME
ln -fs $(pwd)/.emacs        $HOME
ln -fs $(pwd)/.screenrc     $HOME
ln -fs $(pwd)/.tmux.conf    $HOME
ln -fs $(pwd)/.vimrc        $HOME
ln -fs $(pwd)/ftplugin/     $HOME/.vim/after
ln -fs $(pwd)/plugins.vim   $HOME/.vim
ln -fs $(pwd)/encode.el     $HOME/.emacs.d/my_els
ln -fs $(pwd)/packages.el     $HOME/.emacs.d/my_els
