return {
    {
        'stevearc/aerial.nvim',
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("aerial").setup({
                on_attach = function(bufnr)
                    Vim.keymap.set("n", "[f", "<cmd>AerialPrev<CR>", { buffer = bufnr, desc = "Prvious Function" })
                    Vim.keymap.set("n", "]f", "<cmd>AerialNext<CR>", { buffer = bufnr, desc = "Next Function" })
                end,
                default_direction = "prefer_left",
                placement = "edge",
            })
            Vim.keymap.set("n", "<leader>fa", "<cmd>AerialToggle!<CR>", { desc = "Find Aerial Functions" })
        end
    }
}
