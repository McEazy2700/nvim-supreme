local set = Vim.opt
Vim.g.mapleader = " "
set.guicursor = ""

set.nu = true
set.rnu = true

set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 2
set.expandtab = true

set.smartindent = true
set.wrap = false

set.swapfile = false
set.backup = false
set.undodir = os.getenv("HOME") .. "/.vim/undodir"
set.undofile = true

set.hlsearch = false
set.incsearch = true

set.termguicolors = true

set.scrolloff = 8
set.signcolumn = "yes"
set.isfname:append("@-@")

set.updatetime = 50
Vim.g.loaded_netrw = 1
Vim.g.loaded_netrwPlugin = 1
Vim.cmd.colorscheme("catppuccin")
