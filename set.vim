syntax enable        " enable syntax processing
set nowrap           " turn off word wapring/wrapping
set noerrorbells     " no error bells
set tabstop=2        " number of visual spaces per tab
set softtabstop=2    " number of spaces in tab when editing
set shiftwidth=2     " number of spaces with << and >>
set expandtab        " tabs are spaces
set rnu              " show relative numbering
set nu               " show the line number the cursor is at
set wildmenu         " visual autocomplete for command menu
set showmatch        " hightlight matching [{()}]
set colorcolumn=80   " highlight column
set linebreak        " only break between words
set smartindent      " indents according to the syntax/style of code
set cmdheight=2      " height of the command line area
set guicursor=       " block cursor
set scrolloff=8      " better scrolling experience
set signcolumn=yes   " left side bar for linting/git/errors

set nohlsearch       " no highlighting after search is complete
set hlsearch         " highlight search matches
set incsearch        " search as characters are entered

set noswapfile       " no swap files
set nobackup         " no backups
set undodir=~/.vim/undodir
set undofile

set encoding=UTF-8
set termguicolors

:set listchars=tab:>·,trail:~,space:·
:set list

" Latex autocompile with pdflatex
nnoremap <Leader>p :w<CR> :!pdflatex %<CR><CR> :!latexmk -c %<CR><CR>

" Set colorcolumn color
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Gruvbox theme settings
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
set background=dark

" Function for trimming trailing whitespace
fun! TrimTrails()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

augroup TRIM_TRAIL
  autocmd!
  autocmd BufWritePre * :call TrimTrails()
augroup END

