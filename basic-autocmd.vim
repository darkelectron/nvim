" python
autocmd FileType python setlocal tabstop=4

" remove whitespaces
autocmd BufWritePre * :%s/\s\+$//e
" center doc on insert modde
"autocmd InsertEnter * norm zz"

