vim.o.number = true
vim.o.relativenumber = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.tabstop = 2
vim.o.softtabstop = 0
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.backup = false
vim.o.swapfile = false
vim.o.wrap = false
vim.o.guifont = "monospace:h20"
vim.o.autoindent = true
vim.o.scrolloff = 10
vim.o.title = true
vim.cmd('syntax enable')
vim.cmd('colorscheme gruvbox')
vim.cmd('filetype plugin indent on')
vim.cmd([[
set notimeout
set encoding=utf-8
]])

