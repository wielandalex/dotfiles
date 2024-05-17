vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = { "*.go", "*.templ" },
    callback = function()
        vim.lsp.buf.format()
    end,
})
