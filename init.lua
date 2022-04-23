require "options"
require "keymaps"
require "plugins"
require "plugconfigs.autopairs"
require "plugconfigs.slanted-gaps"
require "plugconfigs.comment"
-- require "plugconfigs.treesitter"
require "plugconfigs.cmp"
require "plugconfigs.nvim-tree"
require "plugconfigs.gitsigns"
require "lsp"
-- require "plugconfigs.bufferline"
require "plugconfigs.lastplace"
vim.cmd([[source ~/.config/nvim/plugconfigs/quick-scope.vim]])
vim.cmd([[source ~/.config/nvim/basic-autocmd.vim]])
vim.cmd([[source ~/.config/nvim/basic-settings.vim]])
vim.cmd([[source ~/.config/nvim/lua/plugconfigs/lazygit.vim]])
vim.cmd([[source ~/.config/nvim/lua/plugconfigs/vista.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/plugins.vim]])
vim.cmd([[source ~/.config/nvim/plugconfigs/vimwiki.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/coc.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/coc-snippets.vim]])
vim.cmd([[source ~/.config/nvim/plugconfigs/markdown-preview.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/lightline.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/coc-pyright.vim]])
vim.cmd([[source ~/.config/nvim/plugconfigs/vimtex.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/tagbar.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/fzf.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/indentline.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/lazygit.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/vim-angry-reviewer.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/languagetool.vim]])
-- vim.cmd([[source ~/.config/nvim/plugconfigs/dashboard.vim]])
-- " source ~/.config/nvim/plugconfigs/vista.vim
-- " source ~/.config/nvim/plugconfigs/bufferline.nvim
-- set termguicolors
-- require("bufferline").setup{
--   options = {
--     separator_style = "slant",
--     numbers = "ordinal"
--   }
-- }

require('lspconfig').pyright.setup {
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    python =  {
      analysis = {
        autoSearchPaths = false,
        useLibraryCodeForTypes = false,
        diagnosticMode = 'openFilesOnly',
      }
    }
  }
}
