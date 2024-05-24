return {
	{
		"numToStr/Comment.nvim",
		opts = {},
		lazy = false,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		dependencies = {
			{ "neovim/nvim-lspconfig" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/nvim-cmp" },
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
		config = function()
			local lsp_zero = require("lsp-zero")
			lsp_zero.on_attach(function(_, bufnr)
				lsp_zero.default_keymaps({ buffer = bufnr })
				local map = Vim.keymap.set

				local format_callback = function()
					Vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end

				map("n", "gr", "<cmd>Telescope lsp_references<cr>", { buffer = bufnr, desc = "Lsp References" })
				map("n", "gd", "<cmd>Telescope lsp_definitions<cr>", { buffer = bufnr, desc = "Lsp Definitions" })
				map(
					"n",
					"gi",
					"<cmd>Telescope lsp_implementations<cr>",
					{ buffer = bufnr, desc = "Lsp Implementations" }
				)
				map("n", "gx", "<cmd>Telescope diagnostics bufnr=0<cr>", { desc = "Lsp Diagnostics" })
				map("n", "lx", "<cmd>Telescope diagnostics<cr>", { desc = "Lsp Diagnostics" })
				map("n", "lr", Vim.lsp.buf.rename, { desc = "Lsp Rename", buffer = bufnr })
				map("n", "lf", format_callback, { desc = "Lsp Format", buffer = bufnr })
				map("n", "la", Vim.lsp.buf.code_action, { desc = "Lsp Code action", buffer = bufnr })
			end)

			lsp_zero.set_sign_icons({
				error = "✘",
				warn = "▲",
				hint = "⚑",
				info = "»",
			})
			require("mason-lspconfig").setup_handlers({
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
			})

			local cmp = require("cmp")
			local cmp_action = require("lsp-zero").cmp_action()
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")

			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

			cmp.setup({
				preselect = "item",
				completion = {
					completeopt = "menu,menuone,noinsert",
				},
				sources = {
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
				},
				mapping = cmp.mapping.preset.insert({
					["<Tab>"] = cmp_action.luasnip_supertab(),
					["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
					["<CR>"] = cmp.mapping.confirm({ select = false }),
				}),
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},

				formatting = {
					-- changing the order of fields so the icon is the first
					fields = { "menu", "abbr", "kind" },

					-- here is where the change happens
					format = function(entry, item)
						local menu_icon = {
							nvim_lsp = "  ",
							luasnip = "",
							buffer = "",
							path = "",
							nvim_lua = "",
						}

						item.menu = menu_icon[entry.source.name]
						return item
					end,
				},
			})
		end,
	},
}
