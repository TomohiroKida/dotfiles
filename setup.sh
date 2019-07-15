#!/bin/bash -x
# -f --force
# -s --symbolic 

# -p --parents
mkdir -p ~/.vim/after
mkdir -p ~/.vim/backup

ln -fs $HOME/dotfiles/.bash_profile $HOME
ln -fs $HOME/dotfiles/.bashrc       $HOME
ln -fs $HOME/dotfiles/.emacs        $HOME
ln -fs $HOME/dotfiles/.screenrc     $HOME
ln -fs $HOME/dotfiles/.tmux.conf    $HOME
ln -fs $HOME/dotfiles/.vimrc        $HOME
ln -fs $HOME/dotfiles/ftplugin/     $HOME/.vim/after
ln -fs $HOME/dotfiles/plugins.vim   $HOME/.vim
