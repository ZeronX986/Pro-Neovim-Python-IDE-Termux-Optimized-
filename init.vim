call plug#begin()
  2 Plug 'neovim/nvim-lspconfig'
  3 Plug 'mfussenegger/nvim-dap'
  4 Plug 'rcarriga/nvim-dap-ui'
  5 call plug#end()
  6
  7 set number
  8 set autoindent
  9 set tabstop=4
 10 set shiftwidth=4
 11 set termguicolors
 12 syntax on
 13
 14 highlight DiagnosticUnderlineError gui=underline guisp=#ff0000
 15 highlight DiagnosticError guifg=#ff0000
 16
 17 lua << EOF
 18 local dap = require('dap')
 19
 20 dap.adapters.python = {
 21   type = 'executable',
 22   command = 'python',
 23   args = { '-m', 'debugpy.adapter' }
 24 }
 25
 26 dap.configurations.python = {
 27   {
 28     type = 'python',
 29     request = 'launch',
 30     name = "Debug Current File",
 31     program = "${file}",
 32   },
 33 }
 34
 35 require('lspconfig').pyright.setup{}
 36
 37 vim.diagnostic.config({
 38   update_in_insert = true,
 39   underline = true,
 40 })
 41 EOF