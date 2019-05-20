"if &compatible
"    set nocompatible
"endif

set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('$HOME/.vim/dein'))
call dein#add('Shougo/dein.vim')
" ---- color scheme ---- "
call dein#add('w0ng/vim-hybrid')
call dein#add('sheerun/vim-wombat-scheme')
call dein#add('tomasr/molokai')
" ---- tools ---- "
call dein#add('thinca/vim-quickrun')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('tpope/vim-markdown')
"call dein#add('Yggdroot/indentLine')
call dein#end()

let g:quickrun_config = {'*': {'split': ''}}

autocmd BufNewFile,BufReadPost *.md set filetype=markdown
let g:previm_open_cmd = 'firefox '

"autocmd FileType tex let g:indentLine_conceallevel = 0
