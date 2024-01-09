-- LSP keybindings
local on_attach = function(_, bufnr)
    local keymap = function(mode, keys, func, desc)
        if desc then
            desc = "LSP: " .. desc
        end

        vim.keymap.set(mode, keys, func, { buffer = bufnr, desc = desc })
    end

    keymap("n", "<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    keymap("n", "<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")

    keymap("n", "gd", vim.lsp.buf.definition, "[G]oto [D]efinition")
    keymap("n", "gr", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
    keymap("n", "gI", require("telescope.builtin").lsp_implementations, "[G]oto [I]mplementation")
    keymap("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
    keymap("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")

    keymap("n", "K", vim.lsp.buf.hover, "Hover Documentation")
    keymap("n", "<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
    keymap("i", "<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")

    keymap("n", "<leader><leader>f", vim.lsp.buf.format, "[F]ormat current buffer")
end

-- Those language servers will be installed/configured
local servers = {
    lua_ls = {
        Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
    gopls = {},
    templ = {},
    omnisharp = {
        filetypes = { "cs", "vb", "cshtml" },
    },
    tsserver = {},
    html = {},
    cssls = {},
}

-- LSP config
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({
            capabilities = capabilities,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
            on_attach = on_attach,
        })
    end
})

vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    {
        pattern = { "*.go", "*.templ" },
        callback = function()
            vim.lsp.buf.format()
        end,
    }
)

vim.filetype.add({
    extension = {
        templ = "templ",
    },
})
