return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    aerial = true,
                    treesitter = true,
                    which_key = true,
                    telescope = {
                        enabled = true,
                        style = "nvchad",
                    },
                },
            })
        end,
    },
}
