-- reload vim on write
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  -- plugins
  use 'wbthomason/packer.nvim' -- Packer can manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use "lukas-reineke/indent-blankline.nvim"
  use {
      'goolord/alpha-nvim',
      config = function ()
          require'alpha'.setup(require'alpha.themes.dashboard'.opts)
      end
  }
  use "kyazdani42/nvim-web-devicons"
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use "numToStr/Comment.nvim" -- Easily comment stuff
  use "kyazdani42/nvim-tree.lua"

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

	-- LSP
	use { "neovim/nvim-lspconfig"} -- enable LSP
  use { "williamboman/mason.nvim"} -- simple to use language server installer
  use { "williamboman/mason-lspconfig.nvim"}
	use { "jose-elias-alvarez/null-ls.nvim"} -- for formatters and linters
  use { "RRethy/vim-illuminate"}

  -- Telescope
  -- use "nvim-telescope/telescope.nvim"
  use({
    "nvim-telescope/telescope.nvim",
    requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
    config = function()
        require("telescope").load_extension("lazygit")
    end,
})

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter"
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Others
  use 'ethanholz/nvim-lastplace'
  use 'liuchengxu/vista.vim'
  use 'tpope/vim-surround'
  use 'tpope/vim-repeat'
  use 'tpope/vim-obsession'
  use 'lervag/vimtex'
  use 'vimwiki/vimwiki'
  use 'unblevable/quick-scope'
  use 'thesis/vim-solidity'

-- Plugins can have post-install/update hooks
  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown", "vimwiki" } end, ft = { "markdown", "vimwiki" }, })
  use {"ellisonleao/glow.nvim"}
  -- use {
  --     'glacambre/firenvim',
  --     run = function() vim.fn['firenvim#install'](0) end
  -- }
  -- use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
  --   require("toggleterm").setup()
  -- end}
  -- use "akinsho/bufferline.nvim"
  -- use {
  --   'romgrk/barbar.nvim',
  --   requires = {'kyazdani42/nvim-web-devicons'}
  -- }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

