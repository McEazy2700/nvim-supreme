local vim = vim;
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = "all",
  -- extra_groups = { -- table/string: additional groups that should be cleared
  --   -- In particular, when you set it to 'all', that means all available groups
  --
  --   -- example of akinsho/nvim-bufferline.lua
  --   "BufferLineTabClose",
  --   "BufferlineBufferSelected",
  --   "BufferLineFill",
  --   "BufferLineBackground",
  --   "BufferLineSeparator",
  --   "BufferLineIndicatorSelected",
  -- },
  exclude = {}, -- table: groups you don't want to clear
})
function ColorDeezNutz(color)
	color = color or "tokyonight-night";
	vim.cmd.colorscheme(color);
  vim.cmd.TransparentEnable()

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorDeezNutz()
