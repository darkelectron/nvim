set noshowmode

let g:lightline = {
			\   'colorscheme': 'simpleblack',
			\   'active': {
			\     'left':[ [ 'mode', 'paste' ],
			\              [  'gitbranch', 'readonly', 'filename', 'modified', 'method' ]
			\     ],
      \     'right':[ [ 'syntastic', 'mylineinfo' ],
      \               [ 'percent', 'lineinfo' ],
      \               [ 'fileformat', 'fileencoding', 'filetype' ]
      \     ]
			\   },
			\ 'component_function': {
			\   'gitbranch': 'FugitiveHead',
      \   'mylineinfo': "MyLineInfo",
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileFormat',
      \   'method': 'NearestMethodOrFunction'
			\ },
			\ }
function! MyLineInfo()
  return line('.') . '/' . line('$')
endfunction

" function! NearestMethodOrFunction()
"   return tagbar#currenttag("%s", "", 'f', 'nearest-stl')
" endfunction

function! NearestMethodOrFunction()
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

function! MyFiletype()
    return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
  endfunction

  function! MyFileformat()
    return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction


let g:lightline.separator = {
			\   'left': '', 'right': ''
			\}

let g:lightline.subseparator = {
			\   'left': '\/', 'right': '\\'
			\}

let g:lightline.tabline_separator = g:lightline.separator
let g:lightline.tabline_subseparator = g:lightline.subseparator

