return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c_sharp",
                "css",
                "go",
                "html",
                "javascript",
                "lua",
                "sql",
                "templ",
                "typescript",
                "vim",
                "vimdoc",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
