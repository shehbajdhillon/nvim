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

nnoremap <silent><C-[> :BufferLineMovePrev<CR>
nnoremap <silent><C-]> :BufferLineMoveNext<CR>

nnoremap <silent>b[ :BufferLineCyclePrev<CR>
nnoremap <silent>b] :BufferLineCycleNext<CR>
