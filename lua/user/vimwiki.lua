return {
   'vimwiki/vimwiki',
  event = "VimEnter",
   init = function () --replace 'config' with 'init'
      vim.g.vimwiki_list = {{path = '~/Documents/vimwiki/', syntax = 'markdown', ext = '.md'}}
   end
}
