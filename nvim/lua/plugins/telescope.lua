return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
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
    end,
}
