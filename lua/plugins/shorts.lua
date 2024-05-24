return {
  "mbbill/undotree",
  {
    "goolord/alpha-nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local dashboard = require("alpha.themes.theta")
      dashboard.header.val = {
        [[                                                             ]],
        [[███████╗ █████╗ ███████╗██╗   ██╗     ██╗   ██╗██╗███╗   ███╗]],
        [[██╔════╝██╔══██╗╚══███╔╝╚██╗ ██╔╝     ██║   ██║██║████╗ ████║]],
        [[█████╗  ███████║  ███╔╝  ╚████╔╝█████╗██║   ██║██║██╔████╔██║]],
        [[██╔══╝  ██╔══██║ ███╔╝    ╚██╔╝ ╚════╝╚██╗ ██╔╝██║██║╚██╔╝██║]],
        [[███████╗██║  ██║███████╗   ██║         ╚████╔╝ ██║██║ ╚═╝ ██║]],
        [[╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝          ╚═══╝  ╚═╝╚═╝     ╚═╝]],
        [[                                                             ]]
      }
      require("alpha").setup(dashboard.config)
    end,
  },
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          themable = true,
          separator_style = "slant",
          numbers = "ordinal",
          diagnostics = "nvim_lsp",
          sort_by = "insert_after_current",
        },
      })
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "catppuccin",
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
      })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        Vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#E06C75" })
        Vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
        Vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
        Vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
        Vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
        Vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C678DD" })
        Vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
      end)

      Vim.g.rainbow_delimiters = { highlight = highlight }
      require("ibl").setup({ scope = { highlight = highlight } })

      hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    end,
    opts = {},
  },
}
