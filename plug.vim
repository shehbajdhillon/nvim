call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox' " Gruvbox Colorscheme
Plug 'arcticicestudio/nord-vim'
Plug 'rstacruz/vim-closer' " Parenthesis Closer

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax Highligthing
Plug 'neovim/nvim-lspconfig' " Lanaguage server

Plug 'nvim-lua/popup.nvim' " Telescope dependency
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' "Fuzzy finder

Plug 'kyazdani42/nvim-web-devicons' " Colored icons
Plug 'akinsho/nvim-bufferline.lua'

Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}

Plug 'kyazdani42/nvim-tree.lua'

Plug 'kabouzeid/nvim-lspinstall'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

call plug#end()
