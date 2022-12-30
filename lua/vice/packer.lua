vim.cmd [[packadd packer.nvim]]

return require('packer').startup({function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  -- Lsp and Treesitter
  use{"nvim-treesitter/nvim-treesitter", { run = ":TSUpdate"}}
  use("nvim-treesitter/playground")
  use {
  'VonHeikemen/lsp-zero.nvim',
  requires = {
	  -- LSP Support
	  {'neovim/nvim-lspconfig'},
	  {'williamboman/mason.nvim'},
	  {'williamboman/mason-lspconfig.nvim'},

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},
	  {'hrsh7th/cmp-buffer'},
	  {'hrsh7th/cmp-path'},
	  {'saadparwaiz1/cmp_luasnip'},
	  {'hrsh7th/cmp-nvim-lsp'},
	  {'hrsh7th/cmp-nvim-lua'},

	  -- Snippets
	  {'L3MON4D3/LuaSnip'},
	  {'rafamadriz/friendly-snippets'},
	  }
	}

  -- Telescope and Harpoon
  use {
	"nvim-telescope/telescope.nvim",
	tag = '0.1.0',
	requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("ThePrimeagen/harpoon")
  use("mbbill/undotree")
  use({
      "nvim-tree/nvim-tree.lua",
      requires = {"nvim-tree/nvim-web-devicons"},
      tag = "nightly"
  })

  -- Git
  use("tpope/vim-fugitive")

  -- ColorSchemes
  use("Mofiqul/dracula.nvim")
  use("EdenEast/nightfox.nvim")
  use("folke/tokyonight.nvim")
  -- use({"rose-pine/neovim", as = "rose-pine",})

  -- Auto pairs
  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }

  -- Comment
  use({
      "terrortylor/nvim-comment",
      config = function ()
        require("nvim_comment").setup()
      end
  })

  -- Toggleterm
  use("akinsho/toggleterm.nvim")

  -- Which-key
  use {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup {
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  }

  -- lualine
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }

  -- indent blank line
  use("lukas-reineke/indent-blankline.nvim")

  -- Tabs
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  -- CSS
  use{
    "NvChad/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup()
    end
  }

  -- Markdown
  use {"ellisonleao/glow.nvim"}
  use({
    "toppair/peek.nvim",
    config = function ()
      require("peek").setup();
    end,
    run = "deno task --quiet build:fast"
  })

  -- color-picker
  use ({"ziontee113/color-picker.nvim",
      config = function()
          require("color-picker")
      end,
  })

  -- Transparency
  use("xiyaowong/nvim-transparent")
end,
config = {
  display = {
    prompt_border = "curved", --"single",
    open_fn = function()
      return require('packer.util').float({ border = "rounded" })
    end
  }
}})
