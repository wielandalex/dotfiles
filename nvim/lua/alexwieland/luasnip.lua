require("luasnip.loaders.from_vscode").lazy_load()

local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<C-l>", function() ls.jump(1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-h>", function() ls.jump(-1) end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-j>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<C-k>", function()
    if ls.choice_active() then
        ls.change_choice(-1)
    end
end, { silent = true })
