call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox' " Gruvbox Colorscheme
Plug 'rstacruz/vim-closer' " Parenthesis Closer

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Syntax Highligthing
Plug 'neovim/nvim-lspconfig' " Lanaguage server
Plug 'glepnir/lspsaga.nvim' " Info using LSP
Plug 'nvim-lua/completion-nvim' " Auto complete using LSP

Plug 'nvim-lua/popup.nvim' " Telescope dependency
Plug 'nvim-lua/plenary.nvim' " Telescope dependency
Plug 'nvim-telescope/telescope.nvim' "Fuzzy finder

Plug 'kyazdani42/nvim-web-devicons' " Colored icons
Plug 'akinsho/nvim-bufferline.lua'

Plug 'glepnir/galaxyline.nvim' , {'branch': 'main'}


call plug#end()
