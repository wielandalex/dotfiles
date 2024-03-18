-- Syntax highlight config
require("nvim-treesitter.configs").setup({
    ensure_installed = { "lua", "go", "c_sharp", "javascript", "typescript", "css", "html" },
    auto_install = true,
    highlight = {
        enable = true,
        disable = function(lang, buf)
            local ext = vim.fn.expand("%:e")
            if ext == "cshtml" then
                return true
            end

            return false
        end,
    },
    indent = { enable = true },
})
