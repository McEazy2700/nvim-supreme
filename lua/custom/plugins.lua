local vim = vim
local plugins = {
  "folke/which-key.nvim",
  "liangxianzhe/floating-input.nvim",
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("indent_blankline").setup {
        -- for example, context is off by default, use this to turn it on
        show_current_context = true,
        show_current_context_start = true,
      }
    end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      local gwidth = vim.api.nvim_list_uis()[1].width
      local gheight = vim.api.nvim_list_uis()[1].height
      local width = 30
      require("nvim-tree").setup({
        sort_by = "case_sensitive",
        view = {
          width = width,
          float = {
            enable = true,
            open_win_config = {
              relative = "editor",
              border = "rounded",
              width = width,
              height = width,
              row = (gheight - width) * 0.4,
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

  --- lsp
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },             -- Required
      { 'williamboman/mason.nvim' },           -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },

  "jiaoshijie/undotree",

  --- ColorScheme
  "xiyaowong/transparent.nvim",
  "nanotech/jellybeans.vim",
  "joshdick/onedark.vim",
  "folke/tokyonight.nvim",

  { "folke/neoconf.nvim", cmd = "Neoconf" },
  "folke/neodev.nvim",
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup {
        options = {
          hover = {
            enabled = true,
            delay = 200,
            reveal = { 'close' }
          }
        }
      }
    end
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "simrat39/rust-tools.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap"
    },
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        hover_action = {
          auto_focus = true
        },
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            vim.keymap.set(
              "n", "<C-space>",
              rt.hover_actions.hover_actions,
              { buffer = bufnr }
            )
            -- Code action groups
            vim.keymap.set(
              "n", "<Leader>a",
              rt.code_action_group.code_action_group,
              { buffer = bufnr }
            )
          end,
        },
      })
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require("custom.ui")
    end
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require 'treesitter-context'.setup()
    end
  },
  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = true,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    lazy = false,
  }

}
return plugins
