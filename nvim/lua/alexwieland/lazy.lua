-- Install package manager: Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Install packages
require("lazy").setup({
    -- Color theme
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
    },

    -- Key helper
    { "folke/which-key.nvim", opts = {} },

    -- Automatic LSP installation
    {
        "williamboman/mason.nvim",
        config = true,
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        },
    },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "neovim/nvim-lspconfig",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lsp-signature-help",
            "saadparwaiz1/cmp_luasnip",
            "onsails/lspkind.nvim",
        }
    },

    {
        "L3MON4D3/LuaSnip",
        dependencies = {
            "rafamadriz/friendly-snippets",
        },
    },

    -- Git signs
    { "lewis6991/gitsigns.nvim", opts = {} },

    -- Status Line
    { "nvim-lualine/lualine.nvim" },

    -- "gc" to comment selection
    { "numToStr/Comment.nvim", opts = {} },

    -- Better syntax highlighting
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },

    -- Git integration
    "tpope/vim-fugitive",

    -- Search
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.3",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    -- Helper for parantheses, brackets, quotes, tags
    "tpope/vim-surround",

    -- Automatically detect tab/space indentation
    "tpope/vim-sleuth",

    -- DB UI
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod", lazy = true },
        },
        cmd = {
            "DBUI",
            "DBUIToggle",
            "DBUIAddConnection",
            "DBUIFindBuffer",
        },
        init = function()
            vim.g.db_ui_use_nerd_fonts = 1
        end,
    },

    -- Quick file navigation
    { "ThePrimeagen/harpoon", opts = {} },
}, {})
