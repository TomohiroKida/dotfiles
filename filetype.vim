augroup filetypedetect
    au BufRead,BufNewFile *.c     setfiletype c 
    au BufRead,BufNewFile *.css   setfiletype css 
    au BufRead,BufNewFile *.html  setfiletype html
    au BufRead,BufNewFile *.js    setfiletype js
    au BufRead,BufNewFile *.tex   setfiletype tex
    au BufRead,BufNewFile *.scala setfiletype scala 
    au BufRead,BufNewFile *.rb    setfiletype ruby
    au BufRead,BufNewFile *.py    setfiletype python
    au BufRead,BufNewFile *.md    setfiletype md
    au BufRead,BufNewFile *.vim   setfiletype vim
augroup END
