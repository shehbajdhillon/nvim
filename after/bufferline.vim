lua <<EOF
require("bufferline").setup{}
EOF

nnoremap <Leader>d :w<CR> :bd<CR>

nnoremap <silent><C-[> :BufferLineCyclePrev<CR>
nnoremap <silent><C-]> :BufferLineCycleNext<CR>

nnoremap <silent>b[ :BufferLineMovePrev<CR>
nnoremap <silent>b] :BufferLineMoveNext<CR>
