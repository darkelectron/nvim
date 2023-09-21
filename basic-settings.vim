" vnoremap <leader>k :m '<-2<CR>gv=gv
" vnoremap <leader>j :m '>+1<CR>gv=gv

" nnoremap <leader>d :tcd %:h<CR>

syntax on

" autocompletion
" set wildmode=longest,list,full

" cursor line
" set cursorcolumn

" spell
set spelllang=en_us,en_gb

filetype plugin on

" colors
hi CursorLine term=bold cterm=bold guibg=NONE
hi Normal term=NONE guibg=NONE ctermbg=NONE
hi SignColumn term=NONE cterm=NONE guibg=NONE ctermbg=NONE

hi TabLine cterm=NONE ctermbg=242 ctermfg=0
hi TabLineSel cterm=NONE ctermbg=NONE ctermfg=white
hi TabLineFill cterm=NONE ctermbg=0 ctermfg=242

map <F5> :setlocal spell!<CR>
highlight VertSplit cterm=NONE
" folds
" set foldmethod=indent
" function! MyFoldText()
"     let line = getline(v:foldstart)
"     let foldedlinecount = v:foldend - v:foldstart + 1
"     return ' ⭐️ '. foldedlinecount . line
" endfunction
" set foldtext=MyFoldText()
" set fillchars=fold:.

highlight Folded guibg=grey ctermbg=NONE guifg=blue ctermfg=NONE term=bold
highlight FoldColumn guibg=darkgrey guifg=white ctermbg=NONE ctermfg=NONE term=bold
hi link illuminatedWord Visual

let g:vimwiki_global_ext = 0
