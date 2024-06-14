vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("wielandalex.package-manager")

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.autoindent = true
vim.o.smartindent = true

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

vim.o.colorcolumn = "100"

vim.o.scrolloff = 5

vim.o.undofile = true

vim.o.wrap = true
vim.o.showbreak = "+++ "
vim.o.breakat = " "
vim.o.linebreak = true
vim.o.breakindent = true -- Not sure yet

vim.o.splitbelow = true
vim.o.splitright = true

vim.cmd.colorscheme "rose-pine"

require("wielandalex.keymap")
require("wielandalex.autocmd")
