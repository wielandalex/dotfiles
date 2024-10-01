return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        require("harpoon"):setup({
            settings = {
                save_on_toggle = true,
            }
        })
    end,
}
