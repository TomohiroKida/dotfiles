filetype off
filetype plugin indent off

" =============== dein ===============

source ~/.vim/plugins.vim

nnoremap j gj
nnoremap k gk

" =============== cmdline mode key bind ===============
" ---- like emacs ----

cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>


set autoindent 
set expandtab
set tabstop=4
set shiftwidth=4
set backup
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/backup
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac
set swapfile

set autoread

set clipboard=unnamed,autoselect
set mouse=a


"set cursorcolumn
set colorcolumn=81
set cursorline
set hlsearch
set number

set laststatus=2
set statusline=%F%r%h
set showcmd
set cmdheight=2

set nrformats+=alpha
set nrformats-=octal

set showmatch
set matchtime=1

set virtualedit=block


colorscheme hybrid
set background=dark
set t_Co=256

syntax on

filetype plugin indent on
