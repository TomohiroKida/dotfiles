#!/bin/bash
# -b --backup
# -i --interactive
# -s --symbolic 

ln -bis ~/dotfiles/.vimrc ~/.vimrc
ln -bis ~/dotfiles/.bashrc ~/.bashrc
ln -bis ~/dotfiles/.bash_profile ~/.bash_profile
ln -bis ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -bis ~/dotfiles/.screenrc ~/.screenrc
ln -bis ~/dotfiles/filetype.vim ~/.vim/filetype.vim
ln -bis ~/dotfiles/ftplugin/ ~/.vim/ftplugin/

# -p --parents
mkdir -p ~/.vim/backup
