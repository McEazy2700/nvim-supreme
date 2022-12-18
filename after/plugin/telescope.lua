local builtin = require("telescope.builtin");
local set = vim.keymap.set
set("n", "<leader>ff", builtin.find_files, { desc = "[f]ind [f]ile" })
set("n", "<leader>fg", builtin.git_files, { desc = "[f]ind [g]it files" })
set("n", "<leader>ft", builtin.live_grep, { desc = "[f]ind [t]ext" })
set("n", "<leader>fr", builtin.registers, { desc = "[f]ind [r]egistry" })
set("n", "<leader>fk", builtin.keymaps, { desc = "[f]ind [k]eymaps" })
set("n", "<leader>fb", builtin.buffers, { desc = "[f]ind [b]uffer"})
set("n", "<leader>fc", function () builtin.colorscheme({ enable_preview = true }) end, { desc = "[f]ind [c]olorscheme"})
require("telescope").load_extension('harpoon')
