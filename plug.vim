call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox' " Gruvbox Colorscheme
Plug 'sbdchd/neoformat'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax Highligthing
Plug 'neovim/nvim-lspconfig' " Lanaguage server
Plug 'williamboman/nvim-lsp-installer'

Plug 'nvim-lua/popup.nvim' " Telescope dependency
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' "Fuzzy finder

Plug 'kyazdani42/nvim-web-devicons' " Colored icons
Plug 'akinsho/nvim-bufferline.lua' " Manage buffers in tabs

Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'} " Better looking status line

Plug 'kyazdani42/nvim-tree.lua' " File explorer plugin

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()
