filetype off
filetype plugin indent off

" =============== dein ===============

source ~/.vim/plugins.vim

nnoremap j gj
nnoremap k gk

"== tabline
function! s:SID_PREFIX()
    return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

function! s:my_tabline()  "{{{
    let s = ''
    for i in range(1, tabpagenr('$'))
        let bufnrs = tabpagebuflist(i)
        let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
        let no = i  " display 0-origin tabpagenr.
        let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
        let title = fnamemodify(bufname(bufnr), ':t')
        let title = '[' . title . ']'
        let s .= '%'.i.'T'
        let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
        let s .= no . ':' . title
        let s .= mod
        let s .= '%#TabLineFill# '
    endfor
    let s .= '%#TabLineFill#%T%=%#TabLine#'
    return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2

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
set iskeyword-=_

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

"colorscheme ron
set background=dark
"set t_Co=256

syntax on

filetype plugin indent on
