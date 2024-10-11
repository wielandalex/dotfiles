return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        defaults = {
            layout_strategy = "vertical",
            sorting_strategy = "ascending",
            layout_config = {
                prompt_position = "top",
                mirror = true,
            },
        },
    },
}
