vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.go", "*.lua", "*.templ" },
    callback = function()
        vim.lsp.buf.format()
    end,
})
