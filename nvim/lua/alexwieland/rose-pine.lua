require("rose-pine").setup({
    disable_italics = true
})

if not vim.g.vscode then
    vim.cmd.colorscheme "rose-pine-moon"
end
