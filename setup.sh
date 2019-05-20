#!/bin/bash -x
# -f --force
# -s --symbolic 

# -p --parents
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/after

ln -fs $HOME/dotfiles/.bash_profile        $HOME
ln -fs $HOME/dotfiles/.bash_set_local_path $HOME
ln -fs $HOME/dotfiles/.bashrc              $HOME
ln -fs $HOME/dotfiles/.emacs               $HOME
ln -fs $HOME/dotfiles/.screenrc            $HOME
ln -fs $HOME/dotfiles/.tmux.conf           $HOME
ln -fs $HOME/dotfiles/.vimrc               $HOME
ln -fs $HOME/dotfiles/plugins.vim          $HOME/.vim
ln -fs $HOME/dotfiles/ftplugin/            $HOME/.vim/after
