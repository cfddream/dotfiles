" ---------------------------------------------------------------------------->>
if exists("did_load_filetypes")
    finish
endif

augroup filetypedetect
    autocmd! BufNewFile,BufRead *.txt setfiletype txt
    autocmd! BufNewFile,BufRead *.vimwiki setfiletype vimwiki
    autocmd! BufNewFile,BufRead {TODO,todo,TodoList} setfiletype todo

    autocmd! BufNewFile,BufRead *.php setfiletype php
    autocmd! BufNewFile,BufRead *.tpl.html setfiletype php

    autocmd! BufNewFile,BufRead *.as setfiletype javascript
    autocmd! BufNewFile,BufRead *.json setfiletype json

    autocmd! BufNewFile,BufRead *.go setfiletype go

    " Apache
    autocmd! BufNewFile,BufRead /etc/apache2/*,/etc/httpd/* setlocal filetype=apache
    " Nginx
    autocmd! BufNewFile,BufRead /etc/nginx/* set ft=nginx
augroup END

" }}}
" <<----------------------------------------------------------------------------