local vim = vim
local set = vim.opt
local glob = vim.g

glob.loaded_netrw = 1
glob.loaded_netrwPlugin = 1
set.termguicolors = true
set.tabstop = 2
set.autoindent = true
set.smartindent = true
set.expandtab = true
set.shiftwidth = 2
set.syntax = "on"
set.number = true
set.relativenumber = true
set.wrap = false
set.cursorline = true
-- set.cursorcolumn = true
set.list = true
set.ignorecase = true
set.incsearch = true
set.wrapscan = true
set.mouse = "a"
set.showmatch = true
-- set.spell = true
set.autoread = true
set.undofile = true
set.ruler = true
set.backup = false
set.colorcolumn = "80"


--- Lsp
-- gray
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg = 'NONE', strikethrough = true, fg = '#808080' })
-- blue
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg = 'NONE', fg = '#569CD6' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'CmpIntemAbbrMatch' })
-- light blue
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg = 'NONE', fg = '#9CDCFE' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'CmpItemKindVariable' })
-- pink
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg = 'NONE', fg = '#C586C0' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'CmpItemKindFunction' })
-- front
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg = 'NONE', fg = '#D4D4D4' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'CmpItemKindKeyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'CmpItemKindKeyword' })
