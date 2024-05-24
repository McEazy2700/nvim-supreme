return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        config = function()
            local gwidth = Vim.api.nvim_list_uis()[1].width
            local gheight = Vim.api.nvim_list_uis()[1].height
            local width = math.floor(gwidth * 0.4)
            require("nvim-tree").setup({
                update_focused_file = {
                    enable = true,
                },
                sort_by = "case_sensitive",
                view = {
                    width = width,
                    float = {
                        enable = true,
                        open_win_config = {
                            relative = "editor",
                            border = "rounded",
                            width = width,
                            height = math.floor(gheight * 0.9),
                            row = 1,
                        },
                    },
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
            })
        end
    },
}
