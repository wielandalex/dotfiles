vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Find diagnostics" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files" })
vim.keymap.set("n", "<leader>fF", builtin.git_files, { desc = "Find Git files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find with grep" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
vim.keymap.set("n", "<leader>fr", builtin.help_tags, { desc = "Resume find" })
vim.keymap.set("n", "<leader>f/", builtin.current_buffer_fuzzy_find, { desc = "Find in current buffer" })
vim.keymap.set("n", "<leader>f?", builtin.oldfiles, { desc = "Find previous files" })

-- Harpoon
local harpoon = require("harpoon")
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Harpoon: open" })
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end, { desc = "Harpoon: add file" })
vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, { desc = "Harpoon: go to 1" })
vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, { desc = "Harpoon: go to 2" })
vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, { desc = "Harpoon: go to 3" })
vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, { desc = "Harpoon: go to 4" })
vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, { desc = "Harpoon: go to 5" })

--- LSP
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help)

        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, desc = "Rename symbol" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, desc = "Code action" })

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = args.buf, desc = "Go to definition" })
        vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { buffer = args.buf, desc = "Go to implementation" })
        vim.keymap.set("n", "gr", builtin.lsp_references, { buffer = args.buf, desc = "List references" })

        vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float,
            { buffer = args.buf, desc = "View diagnostics of current line" })

        vim.keymap.set("n", "<leader><leader>f", vim.lsp.buf.format, { buffer = args.buf, desc = "Format" })
    end,
})
