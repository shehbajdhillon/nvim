"nvim completion settings
"
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]
set shortmess+=c

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

  if client.resolved_capabilities.document_formatting then
    vim.api.nvim_command [[augroup Format]]
    vim.api.nvim_command [[autocmd! * <buffer>]]
    vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
    vim.api.nvim_command [[augroup END]]
  end

  -- turn on auto complete for the attached server
  require 'completion'.on_attach(client, bufnr)

end

nvim_lsp.tsserver.setup {
  on_attach = on_attach,
}

nvim_lsp.clangd.setup {
  on_attach = on_attach,
}

nvim_lsp.texlab.setup {
  on_attach = on_attach,
}

nvim_lsp.pyright.setup {
  on_attach = on_attach,
}

nvim_lsp.omnisharp.setup {
  on_attach = on_attach,
  cmd = {
    "/home/shehbaj/omnisharp/run",
    "--languageserver",
    "--hostPID",
    tostring(vim.fn.getpid())
  },
}

nvim_lsp.terraformls.setup{
  on_attach = on_attach,
}

EOF
