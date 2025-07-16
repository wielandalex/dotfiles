return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup()

        local server_options = {
            lua_ls = {
                Lua = {
                    telemetry = { enabled = false },
                },
            },
        }

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = capabilities,
                    settings = server_options[server_name],
                    filetypes = (server_options[server_name] or {}).filetypes,
                })
            end,
        })
    end,
}
