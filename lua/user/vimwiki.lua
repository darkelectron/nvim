return {
  'vimwiki/vimwiki',
  keys = {
    {
      "<leader>ww",
      "<cmd>VimwikiIndex<cr>",
      desc = "load vimwiki"
    }
  },
  init = function () --replace 'config' with 'init'
    vim.g.vimwiki_list = {{path = '~/Documents/vimwiki_notes/', syntax = 'markdown', ext = '.md'}}
    vim.g.vimwiki_tag_format = {conceal = 1}
  end
}
