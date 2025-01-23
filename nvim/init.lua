vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.splitbelow = true
vim.o.splitright = true

vim.o.colorcolumn = "100"

vim.o.scrolloff = 5
vim.o.sidescrolloff = 10

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.undofile = true

-- TODO: remove if not happy
vim.o.clipboard = "unnamedplus"

require("config.lazy")

vim.cmd("colorscheme rose-pine")

require("config.keymap")
require("config.format_on_save")
