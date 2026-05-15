call plug#begin()
Plug 'neovim/nvim-lspconfig'
Plug 'mfussenegger/nvim-dap'
Plug 'mfussenegger/nvim-dap-python'
call plug#end()

set number
set relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set smartindent
set updatetime=300
syntax on

lua << EOF
require('lspconfig').pyright.setup{}

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = true,
  underline = true,
  severity_sort = true,
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false, scope = "cursor" })
  end
})
EOF
