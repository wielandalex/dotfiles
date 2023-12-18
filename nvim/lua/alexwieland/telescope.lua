require("telescope").setup({
    defaults = {
        layout_strategy = "vertical",
        sorting_strategy = "ascending",
        layout_config = {
            prompt_position = "top",
            mirror = true,
        },
    },
})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>?", builtin.oldfiles, { desc = "Find recently opened files" })
vim.keymap.set("n", "<leader>/", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy search in current buffer" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind [B]uffers" })
vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "[F]ind [G]it Files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind with live [G]rep" })
