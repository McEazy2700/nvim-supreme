local keymap = require("vice.keymap");

local nnoremap = keymap.nnoremap;
local inoremap = keymap.inoremap;
local tnoremap = keymap.tnoremap;
local vnoremap = keymap.vnoremap
vim.g.mapleader = " "

nnoremap("<leader>pv", "<cmd>Ex<CR>");
nnoremap("<leader>/", "<cmd>CommentToggle<cr>");
vnoremap("<leader>/", ":CommentToggle<cr>");

nnoremap("<c-h>", "<cmd>wincmd h<CR>");
nnoremap("<c-l>", "<cmd>wincmd l<CR>");
nnoremap("<c-\\>", "<cmd>ToggleTerm dir=./ direction=float<CR>");
tnoremap("<c-\\>", "<cmd>ToggleTerm direction=float<CR>");
tnoremap("<c-h>", "<cmd>wincmd h<CR>");
tnoremap("<c-l>", "<cmd>wincmd l<CR>");
inoremap("jk", "<Esc>");
