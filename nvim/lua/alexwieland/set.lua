-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Automaticalliy indent
vim.o.smartindent = true

-- Keep 8 lines above/below current cursor position
vim.o.scrolloff = 8

-- Search config
vim.o.hlsearch = false
vim.o.smartcase = true
vim.o.ignorecase = true

-- Save edit history
vim.o.undofile = true

-- Column ruler
vim.wo.colorcolumn = "100"

-- Tab settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.completeopt = "menuone,noselect"

-- Wrap long lines
vim.o.wrap = true
vim.o.showbreak = "+++ "
vim.o.breakat = " "
vim.o.linebreak = true
vim.o.breakindent = true -- Not sure yet
