require "options"
require "keymaps"
require "Lazy"
require "autocommands"
require "plugconfigs.slanted-gaps"
vim.cmd([[source ~/.config/nvim/basic-settings.vim]])
vim.cmd 'colorscheme tokyonight-moon'
require "vimwiki_preamble"
