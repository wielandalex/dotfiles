vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>q", "<cmd>bd<cr>", { desc = "Delete buffer" })

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>ds", require("telescope.builtin").lsp_document_symbols, { desc = "Document symbols" })
vim.keymap.set("n", "<leader>f/", require("telescope.builtin").current_buffer_fuzzy_find, { desc = "Find in current buffer" })
vim.keymap.set("n", "<leader>f?", require("telescope.builtin").oldfiles, { desc = "Find in current buffer" })
vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Find open buffers" })
vim.keymap.set("n", "<leader>fc", require("telescope.builtin").git_commits, { desc = "Find git commits" })
vim.keymap.set("n", "<leader>fd", require("telescope.builtin").diagnostics, { desc = "Find diagnostics" })
vim.keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fF", require("telescope.builtin").git_files, { desc = "Find git Files" })
vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Find live grep" })
vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Find help" })
vim.keymap.set("n", "<leader>fr", require("telescope.builtin").resume, { desc = "Find resume" })
vim.keymap.set("n", "<leader>ws", require("telescope.builtin").lsp_dynamic_workspace_symbols, { desc = "Workspace symbols" })

local harpoon = require("harpoon")
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: open" })
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: add file" })
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: go to 1" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: go to 2" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: go to 3" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: go to 4" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon: go to 5" })

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set("n", "K", vim.lsp.buf.hover)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, desc = "Rename symbol" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, desc = "Code action" })

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "Go to definition" })
        vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = args.buf, desc = "Go to implementation" })
        vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { buffer = args.buf, desc = "List references" })

        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = args.buf, desc = "Go to next diagnostic" })
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = args.buf, desc = "Go to prev diagnostic" })
        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { buffer = args.buf, desc = "View diagnostics of current line" })

        vim.keymap.set("n", "<leader><leader>f", vim.lsp.buf.format, { buffer = args.buf, desc = "Format" })
    end
})
