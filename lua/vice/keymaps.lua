local vim = vim
vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("v", "<M-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<M-k>", ":m '>-2<CR>gv=gv")
vim.keymap.set("n", "<M-k>", ":m '>-2<CR>")
vim.keymap.set("n", "<M-j>", ":m '>+1<CR>")
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>p", "\"+p")

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
vim.keymap.set("n", "<leader>oe", "<cmd>NvimTreeToggle<CR>", { desc = "[o]pen explorer" })
vim.keymap.set("n", "H", "<cmd>BufferPrevious<cr>", { desc = "Left Buffer"})
vim.keymap.set("n", "L", "<cmd>BufferNext<cr>", { desc = "Right Buffer"})
vim.keymap.set("n", "<leader>c", "<cmd>BufferClose<cr>", { desc = "[c]lose Buffer"})
