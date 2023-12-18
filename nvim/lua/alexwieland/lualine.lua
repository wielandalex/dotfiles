local ln = require("lualine")

ln.setup({
    sections = {
        lualine_c = {
            {
                "filename",
                path = 1,
            },
        },
    },
})
