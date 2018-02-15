"" ==== dein == ""
if &compatible
    set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))
call dein#add('Shougo/dein.vim')
" ---- color scheme ---- "
call dein#add('w0ng/vim-hybrid')
" ---- tools ---- "
call dein#add('thinca/vim-quickrun')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('tpope/vim-markdown')
call dein#add('vhda/verilog_systemverilog.vim')

filetype plugin indent on

let g:quickrun_config = {'*': {'split': ''}}

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:previm_open_cmd = 'firefox '

nnoremap j gj
nnoremap k gk

" NORMALモードに戻るときにIMEをOFFにする
" function! ImInActivate()
"   call system('fcitx-remote -c')
" endfunction
" 
" inoremap <silent> <> <ESC>:call ImInActivate()<CR>

"" cmdline mode key bind like emacs
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-d> <Del>

set autoindent 
set autoread
set backup
set backupdir=~/.vim/backup
set clipboard=unnamed,autoselect
set cmdheight=2
set colorcolumn=81
"set cursorcolumn
set cursorline
set directory=~/.vim/backup
set encoding=utf-8
set expandtab
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set hlsearch
set laststatus=2
set mouse=a
set nrformats+=alpha
set nrformats-=octal
set number
set shiftwidth=2
set showcmd
set showmatch
set statusline=%F%r%h
set swapfile
set tabstop=2
set virtualedit=block

"filetype plugin indent on

set background=dark

set t_Co=256
syntax on
