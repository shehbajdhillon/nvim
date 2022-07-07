lua << EOF

require'nvim-tree'.setup {
  open_on_setup = false,
  open_on_tab = true,
  update_cwd = true,
  diagnostics = {
    enable = true,
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
    side = 'right',
    adaptive_size = true,
  },
  renderer = {
    special_files = {
      'README.md',
      'Makefile',
      'MAKEFILE',
    },
    icons = {
      show = {
        git = true,
        folder = true,
        file = true,
        folder_arrow = false,
      },
      glyphs = {
        default = "",
        symlink = "",
        git = {
          unstaged = "✗",
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "★",
          deleted = "",
          ignored = "◌",
        },
       folder = {
         arrow_open = "",
         arrow_closed = "",
         default = "",
         open = "",
         empty = "",
         empty_open = "",
         symlink = "",
         symlink_open = "",
         },
      },
    },
  },
  actions = {
    open_file = {
      window_picker = {
        exclude = {
          filetype = { 'packer', 'qf' },
          buftype = { 'terminal' }
        },
      },
    },
  },
}

require'nvim-tree.view'.View.winopts.relativenumber = true
require'nvim-tree.view'.View.winopts.number = true

EOF

nnoremap <Leader>t :NvimTreeToggle<CR>
nnoremap <Leader>r :NvimTreeRefresh<CR>

