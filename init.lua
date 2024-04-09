require "options"
require "keymaps"
require "Lazy"
require "autocommands"
require "plugconfigs.slanted-gaps"
vim.cmd([[source ~/.config/nvim/basic-settings.vim]])
vim.cmd 'colorscheme tokyonight-moon'
vim.cmd 'colorscheme catppuccin'
require "vimwiki_preamble"
