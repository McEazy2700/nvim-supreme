local opt = vim.opt
local vim = vim

opt.guicursor = ""

-- line numbers
opt.nu = true
opt.relativenumber = true

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME").."/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.updatetime = 50
opt.colorcolumn = "100"
vim.g.mapleader = " "

-- Neovide
--  g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
vim.g.neovide_transparency = 0.0
vim.g.transparency = 0.8
vim.g.neovide_background_color = '#0f1117'
vim.g.neovide_scale_factor = 1.0

