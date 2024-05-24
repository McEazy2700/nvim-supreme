return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
			"RRethy/vim-illuminate",
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = {
					"vim",
					"lua",
					"vimdoc",
					"html",
					"css",
					"svelte",
					"typescript",
					"javascript",
					"graphql",
					"rust",
					"python",
					"tsx",
				},

				highlight = {
					enable = true,
					use_languagetree = true,
				},

				indent = { enable = true },
			})
		end,
	},
}
