return {
    {
        "nvim-mini/mini.nvim",
        version = "*",
        mappings = {
            add = "sa", -- Add surrounding in Normal and Visual modes
            delete = "sd", -- Delete surrounding
            find = "sf", -- Find surrounding (to the right)
            find_left = "sF", -- Find surrounding (to the left)
            highlight = "sh", -- Highlight surrounding
            replace = "sr", -- Replace surrounding

            suffix_last = "l", -- tuffix to search with "prev" method
            suffix_next = "n", -- tuffix to search with "next" method
        },
        config = function()
            require("mini.surround").setup()
        end,
    },
}

