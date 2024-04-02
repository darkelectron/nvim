return {
   'vimwiki/vimwiki',
  event = "VimEnter",
   init = function () --replace 'config' with 'init'
      vim.g.vimwiki_list = {{path = '~/Documents/vimwiki_notes/', syntax = 'markdown', ext = '.md'}}
   end
}
