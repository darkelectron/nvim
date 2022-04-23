call plug#begin('~/.config/nvim/plugged')
  Plug 'vimwiki/vimwiki'
  Plug 'itchyny/lightline.vim'
  Plug 'preservim/tagbar'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-repeat'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tpope/vim-surround'
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'unblevable/quick-scope'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'lervag/vimtex'
  Plug 'junegunn/fzf.vim'
  Plug 'ryanoasis/vim-devicons'
  Plug 'Yggdroot/indentLine'
  Plug 'farmergreg/vim-lastplace'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-obsession'
  Plug 'airblade/vim-gitgutter'
  Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
  Plug 'kdheepak/lazygit.nvim'
  Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
  " Plug 'ryanoasis/vim-devicons' Icons without colours
  Plug 'akinsho/bufferline.nvim', {'as': 'bufferline'}
  Plug 'glepnir/dashboard-nvim'
  " Plug 'matze/vim-tex-fold'
  Plug 'anufrievroman/vim-angry-reviewer'
  Plug 'vigoux/LanguageTool.nvim'
  " add to .vimrc
  " Plug 'flazz/vim-colorschemes'
  Plug 'liuchengxu/vista.vim'
call plug#end()
