local options = {
  backup = false,
  clipboard = "unnamedplus",
  cmdheight = 2,
  completeopt = { "menuone", "noinsert", "noselect", "preview" },
  fileencoding = "utf-8",
  -- search
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  showmatch = true,
  mouse = "a",
  pumheight = 10, -- preview height
  -- indent and tabbing
  smartindent = true,
  smartcase = true,
  expandtab = true,
  shiftwidth = 2,
  softtabstop = 2,
  tabstop = 2,
  smarttab = true,
  cindent = true,
  -- splitting
  splitbelow = true,
  splitright = true,
  cursorline = true,
  relativenumber = true,
  number = true,
  signcolumn = "yes",
  wrap = false,
  background = "dark",
  ruler = true,
  -- scrolloff
  scrolloff = 2,
  sidescrolloff = 2,
  -- misc
  guifont = "Iosevka Nerd Font 12",
  path = ".,,**",
  updatetime = 300
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work

-- cursor
vim.cmd "set guicursor="
