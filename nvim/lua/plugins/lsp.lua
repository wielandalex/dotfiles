return {
    { "williamboman/mason.nvim", opts = {} },

    "neovim/nvim-lspconfig",

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "cssls",
                    "html",
                    "lua_ls",
                    "omnisharp",
                    "tailwindcss",
                    "templ",
                    "tsserver",
                    "gopls",
                    "jsonls",
                    "yamlls",
                    "dockerls",
                },
            })
        end,
    },

    {
        "folke/lazydev.nvim",
        ft = "lua",
        config = true,
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "onsails/lspkind.nvim",
        },
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require("luasnip").lsp_expand(args.body)
                    end,
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                },
                preselect = cmp.PreselectMode.None,
                mapping = cmp.mapping.preset.insert({
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4),
                    ["<C-a>"] = cmp.mapping.abort(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping({
                        i = function(fallback)
                            if cmp.visible() and cmp.get_active_entry() then
                                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                            else
                                fallback()
                            end
                        end,
                        s = cmp.mapping.confirm({ select = true }),
                        c = cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
                    }),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "nvim_lsp_signature_help" },
                    { name = "lazydev" },
                }, {
                    { name = "buffer" },
                }),
                formatting = {
                    format = require("lspkind").cmp_format({
                        mode = "symbol_text",
                        menu = ({
                            nvim_lsp = "[LSP]",
                            nvim_lsp_signature_help = "[LSP]",
                            buffer = "[Buffer]",
                        }),
                    }),
                },
            })

            cmp.setup.cmdline({ "/", "?" }, {
                mapping = cmp.mapping.preset.cmdline(),
                sources = {
                    { name = "buffer" },
                }
            })

            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    { name = "cmdline" }
                }),
                matching = { disallow_symbol_nonprefix_matching = false }
            })

            vim.filetype.add({
                extension = {
                    templ = "templ",
                },
            })

            local serverOptions = {
                lua_ls = {
                    Lua = {
                        telemetry = { enable = false },
                    },
                },
            }

            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("mason-lspconfig").setup_handlers({
                function(serverName)
                    require("lspconfig")[serverName].setup({
                        capabilities = capabilities,
                        settings = serverOptions[serverName],
                        filetypes = (serverOptions[serverName] or {}).filetypes
                    })
                end,
            })
        end,
    },
}
