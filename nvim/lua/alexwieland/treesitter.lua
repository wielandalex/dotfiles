-- Syntax highlight config
require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "go", "c_sharp", "javascript", "typescript", "css", "html" },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
})
