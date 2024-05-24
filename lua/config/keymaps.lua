local map = Vim.keymap.set

map("n", "<M-f>", "<cmd>1 ToggleTerm direction=float name='Term 1'<cr>", { desc = "Toggle floating terminal" })
map("t", "<M-f>", "<cmd>1 ToggleTerm direction=float name='Term 1'<cr>", { desc = "Toggle floating terminal" })
map("n", "<M-h>", "<cmd>2 ToggleTerm direction=horizontal name='Term 2'<cr>", { desc = "Toggle horizontal terminal" })
map("t", "<M-h>", "<cmd>2 ToggleTerm direction=horizontal name='Term 2'<cr>", { desc = "Toggle horizontal terminal" })
map(
	"n",
	"<M-v>",
	"<cmd>3 ToggleTerm direction=vertical name='Term 3' size=90<cr>",
	{ desc = "Toggle vertical terminal" }
)
map(
	"t",
	"<M-v>",
	"<cmd>3 ToggleTerm direction=vertical name='Term 3' size=90<cr>",
	{ desc = "Toggle vertical terminal" }
)
map("n", "<M-t>", "<cmd>4 ToggleTerm direction=tab name='Term 4'<cr>", { desc = "Toggle tab terminal" })
map("t", "<M-t>", "<cmd>4 ToggleTerm direction=tab name='Term 4'<cr>", { desc = "Toggle tab terminal" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map("n", "<leader>fg", "<cmd>Telescope git_files<cr>", { desc = "Find Git Files" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find Open Buffers" })
map("n", "<leader>fc", "<cmd>Telescope colorscheme<cr>", { desc = "Find Colorschemes" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find Word" })

map("n", "]b", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "[b", "<cmd>BufferLineCyclePrev<cr>", { desc = "Previous Buffer" })

map("n", "<leader>x", "<cmd>bd<cr>", { desc = "Delete Buffer" })
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle Exploere" })

map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move Higlighted Down" })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move Higlighted Up" })

map("n", "J", "mzJ`z", { desc = "Append line to top" })

map("n", "<C-d>", "<C-d>zz", { desc = "Jump Down half a page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Jump Up half a page" })

map("n", "n", "nzzzv", { desc = "Next search item" })
map("n", "N", "Nzzzv", { desc = "Previous search item" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("n", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yank" })

map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>", { desc = "Change Tmux projects" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("n", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yank" })

map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>", { desc = "Change Tmux projects" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("n", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yank" })

map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>", { desc = "Change Tmux projects" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("n", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yank" })

map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>", { desc = "Change Tmux projects" })

map("x", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("n", "<leader>p", '"_dP', { desc = "Paste without yank" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yank" })

map("n", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>y", '"+y', { desc = "Yank to system clipboard" })
map("v", "<leader>Y", '"+Y', { desc = "Yank to system clipboard" })

map("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>", { desc = "Change Tmux projects" })
