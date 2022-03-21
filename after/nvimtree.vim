
let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }

let g:nvim_tree_show_icons = {
    \ 'git': 1,
    \ 'folders': 0,
    \ 'files': 0,
    \ 'folder_arrows': 0,
    \ }

let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': '',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': "",
    \   'arrow_closed': "",
    \   'default': "",
    \   'open': "",
    \   'empty': "",
    \   'empty_open': "",
    \   'symlink': "",
    \   'symlink_open': "",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }

lua << EOF
require'nvim-tree'.setup {
  open_on_setup = true,
  open_on_tab = true,
  update_cwd = true,
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {}
  },
  view = {
    side = 'left',
    auto_resize = true,
  },
}

require'nvim-tree.view'.View.winopts.relativenumber = true
require'nvim-tree.view'.View.winopts.number = true

EOF

nnoremap <Leader>t :NvimTreeToggle<CR>
nnoremap <Leader>r :NvimTreeRefresh<CR>

highlight NvimTreeFolderIcon guibg=blue

