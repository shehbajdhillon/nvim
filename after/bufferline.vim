lua <<EOF
require("bufferline").setup {
  options = {
    offsets = {{
          filetype = "NvimTree",
          text="File Explorer",
          highlight = "Directory",
          text_align = "center"
      }}
    }
}
EOF

nnoremap <silent><C-[> :BufferLineCyclePrev<CR>
nnoremap <silent><C-]> :BufferLineCycleNext<CR>

nnoremap <silent>b[ :BufferLineMovePrev<CR>
nnoremap <silent>b] :BufferLineMoveNext<CR>
