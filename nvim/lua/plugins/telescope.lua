return {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make"
        },
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
            extensions = {
                fzf = {},
            },
        })

        require("telescope").load_extension("fzf")
    end,
}
