local vim = vim

vim.g.mapleader = " "
--- Sets a keymap
--- @param mode "n" | "i" | "v" | "x" the mode for the keymap to opretate
--- @param key string the key to be maped
--- @param cmd function | string the function to be executed
--- @param desc string a description for this keymap
local function mapkey(mode, key, cmd, desc)
  vim.keymap.set(mode, key, cmd, { desc = desc })
end
local ts = require("telescope.builtin")
local funcs = require("custom.functions")

--- Normal Mode
mapkey("n", "<leader>ff", ts.find_files, "Find Files")
mapkey('n', '<leader>fg', ts.live_grep, "Live Grep")
mapkey('n', '<leader>fb', ts.buffers, "Find Buffers")
mapkey('n', '<leader>fh', ts.help_tags, "Find Help")
mapkey('n', '<leader>fc', ts.colorscheme, "Find Help")
mapkey("n", "<C-n>", vim.cmd.NvimTreeToggle, "Toggle NvimTreeToggle")
mapkey("n", "<tab>", vim.cmd.BufferLineCycleNext, "Next Buffer")
mapkey('n', '<leader>x', vim.cmd.bdelete, "Close Buffer")
mapkey("n", "<S-tab>", vim.cmd.BufferLineCyclePrev, "Previous Buffer")
mapkey("n", "<C-l>", ":wincmd l <cr>", "Right Window Focus")
mapkey("n", "<C-h>", ":wincmd h <cr>", "Left Window Focus")
mapkey("n", "<C-j>", ":wincmd j <cr>", "Bottom Window Focus")
mapkey("n", "<C-k>", ":wincmd k <cr>", "Top Window Focus")
mapkey("n", "<C-p>", ":wincmd < <cr>", "Increase window width")
mapkey("n", "<C-o>", ":wincmd > <cr>", "Decrease window width")

mapkey("v", "<leader>y", '"+y', "Yank to clipboard")

-- Lsp
mapkey("n", "[c", funcs.goto_context, "Goto Context")
mapkey("n", "<leader>cr", vim.lsp.buf.rename, "Code Rename")
mapkey("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
mapkey("n", "<leader>cf", vim.lsp.buf.format, "Code Format")

--- Insert Mode
mapkey("i", "jk", "<Esc>cx", "Normal Mode")
