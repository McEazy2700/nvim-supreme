local vim = vim
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '>-2<CR>gv=gv")
vim.keymap.set("n", "<M-k>", ":m '>-2<CR>")
vim.keymap.set("n", "<M-j>", ":m '>+1<CR>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

-- Color picker
local opts = { noremap = true, silent = true, desc="[C]olor picker"}

vim.keymap.set("n", "<C-c>", "<cmd>PickColor<cr>", opts)
vim.keymap.set("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)

-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandRGB<cr>", opts)
-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandHSL<cr>", opts)

require("color-picker").setup({ -- for changing icons & mappings
	-- ["icons"] = { "ﱢ", "" },
	-- ["icons"] = { "ﮊ", "" },
	-- ["icons"] = { "", "ﰕ" },
	-- ["icons"] = { "", "" },
	-- ["icons"] = { "", "" },
	["icons"] = { "ﱢ", "" },
	["border"] = "rounded", -- none | single | double | rounded | solid | shadow
	["keymap"] = { -- mapping example:
		["U"] = "<Plug>ColorPickerSlider5Decrease",
		["O"] = "<Plug>ColorPickerSlider5Increase",
	},
	["background_highlight_group"] = "Normal", -- default
	["border_highlight_group"] = "FloatBorder", -- default
  ["text_highlight_group"] = "Normal", --default
})

vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.

-- Comments
vim.keymap.set("n", "<leader>/", "<cmd>CommentToggle<CR>", { desc = "Comment line" })
vim.keymap.set("v", "<leader>/", ":'<,'>:CommentToggle<CR><Esc>", { desc = "Comment highlighted"})

-- Terminal
vim.keymap.set("t", "<c-\\>", "<cmd>ToggleTermToggleAll<cr>", { desc = "[T]oggle Terminal `all`"})
vim.keymap.set("n", "<M-t>", function ()
    local term = string.format(":%sToggleTerm<cr>", vim.fn.input("Term:: "))
    -- This is the greatest of all time
    vim.cmd(term)
end, { desc = "[t]toggle terminal **number"})

--- Switch Between Buffers and Windows
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<CR>", { desc = "Focus left window" });
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<CR>", { desc = "Focus right window" });
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<CR>", { desc = "Focus bottom window" });
vim.keymap.set("n", "<C-i>", "<cmd>wincmd k<CR>", { desc = "Focus top window" });

-- Exporers
vim.keymap.set("n", "<leader>oe", "<cmd>NvimTreeToggle<CR>", { desc = "[o]pen/close [e]xplorer" })
vim.keymap.set("n", "<leader>on", function ()
  if (vim.api.nvim_buf_get_option(0, "filetype") == "netrw") then
    vim.api.nvim_exec("close", false)
  else
    vim.api.nvim_exec(":Vexplore", false)
  end
end, { desc = "[o]pen/close [n]etRW" })


vim.keymap.set("n", "H", "<cmd>BufferPrevious<cr>", { desc = "Left Buffer"})
vim.keymap.set("n", "L", "<cmd>BufferNext<cr>", { desc = "Right Buffer"})
vim.keymap.set("n", "<leader>c", "<cmd>BufferClose<cr>", { desc = "[c]lose Buffer"})

-- Markdown
vim.keymap.set("n", "<leader>Mg", "<cmd>Glow<cr>", { desc="[M]arkdown [G]low Preview"})
vim.keymap.set("n", "<leader>Mp", "<cmd>PeekOpen<cr>", { desc="[M]arkdown [P]eek"})
vim.keymap.set("n", "<leader>Mc", "<cmd>PeekClose<cr>", { desc="[M]arkdown [P]eek [C]lose"})
