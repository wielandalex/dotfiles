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

vim.keymap.set("n", "<leader>s?", builtin.oldfiles, { desc = "[S]earch recently opened files" })
vim.keymap.set("n", "<leader>s/", builtin.current_buffer_fuzzy_find, { desc = "[S]earch in current buffer" })
vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffers" })
vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<C-p>", builtin.git_files, { desc = "[S]earch [G]it Files" })
vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch with live [G]rep" })
vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
