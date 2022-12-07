vim.cmd([[packadd packer.nvim]]);

return require("packer").startup(function(use)
  -- Packer can manage itself
  use("wbthomason/packer.nvim")
  use("theprimeagen/harpoon")
  use("nvim-lua/plenary.nvim")
  use("folke/which-key.nvim")

  -- Color Schemes
  use("ray-x/aurora")
  use("sainnhe/sonokai")
  use { 'embark-theme/vim', as = 'embark' }
  use ({ 'projekt0n/github-nvim-theme' })
  use { "ellisonleao/gruvbox.nvim" }

  -- Auto pairs
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Toggle Term
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()end
  }

  -- Tabs 
  use 'nvim-tree/nvim-web-devicons'
  use {'romgrk/barbar.nvim', wants = 'nvim-web-devicons'}

  --Status line
  use {
    'nvim-lualine/lualine.nvim',
  }
  -- Markdown stuff
  use {"ellisonleao/glow.nvim"}
  use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })

  -- Auto Comment 
  use "terrortylor/nvim-comment"

  -- Tresitter 
  use{"nvim-treesitter/nvim-treesitter"}

  -- Auto complete and lsp
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("hrsh7th/cmp-nvim-lua")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")
  use("hrsh7th/nvim-cmp")

  -- Mason
  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }
  -- Code snipets
  use("hrsh7th/cmp-vsnip")
  use("hrsh7th/vim-vsnip")
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use {'dsznajder/vscode-es7-javascript-react-snippets',
    run = 'yarn install --frozen-lockfile && yarn compile'
  }
  use("honza/vim-snippets")

  -- Nvim-tree
  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Telescope
  use{
      "nvim-telescope/telescope.nvim",
      tag = "0.1.0"
  }
end);
