" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
" let g:qs_highlight_on_keys = ['f', 'F']
"

augroup qs_colors
  autocmd!
    autocmd ColorScheme * highlight QuickScopePrimary cterm=underline,bold
    autocmd ColorScheme * highlight QuickScopeSecondary cterm=underline,bold,italic
augroup END

" Map the leader key + q to toggle quick-scope's highlighting in normal/visual mode.
" Note that you must use nmap/xmap instead of their non-recursive versions (nnoremap/xnoremap).
nmap <leader>q <plug>(QuickScopeToggle)
xmap <leader>q <plug>(QuickScopeToggle)

" on start
let g:qs_enable=1

" local buffer
let b:qs_local_disable=0

" disable on long lines
let g:qs_max_chars=80
