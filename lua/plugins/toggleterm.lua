return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      float_opts = {
        border = "curved",
        width = function()
          return math.floor(Vim.api.nvim_list_uis()[1].width * 0.9)
        end,
        height = function()
          return math.floor(Vim.api.nvim_list_uis()[1].height * 0.9)
        end,
        title_pos = "left",
      },
    },
  },
}
