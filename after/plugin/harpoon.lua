local mark = require("harpoon.mark");
local ui = require("harpoon.ui");
local term = require("harpoon.term");

local set = vim.keymap.set
set("n", "<leader>ha", mark.add_file)
set("n", "<leader>he", ui.toggle_quick_menu)
set("n", "<leader>hl", ui.nav_next)
set("n", "<leader>hh", ui.nav_prev)
set("n", "<leader>ht", function()
	local target = vim.fn.input("Term:: ");
	term.gotoTerminal(tonumber(target));
end)
set("n", "<leader>hf", function()
	local target = vim.fn.input("File:: ");
	ui.nav_file(tonumber(target)); 
end)
