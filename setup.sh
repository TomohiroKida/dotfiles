#!/bin/bash
# -b --backup
# -i --interactive
# -s --symbolic 

# -p --parents
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/after

ln -bis $HOME/dotfiles/.bash_profile $HOME
ln -bis $HOME/dotfiles/.bashrc       $HOME
ln -bis $HOME/dotfiles/.emacs        $HOME
ln -bis $HOME/dotfiles/.screenrc     $HOME
ln -bis $HOME/dotfiles/.tmux.conf    $HOME
ln -bis $HOME/dotfiles/.vimrc        $HOME
ln -bis $HOME/dotfiles/plugins.vim   $HOME/.vim
ln -bis $HOME/dotfiles/ftplugin/     $HOME/.vim/after
