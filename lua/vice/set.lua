local set = vim.opt
local run = vim.cmd
local glob = vim.g

set.swapfile = false
set.backup = false
set.number = true
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.guifont = {"Meslo", "h14"}
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.termguicolors = true
glob.neovide_scale_factor = 0.9
glob.neovide_transparency = 0.3
glob.transparency = 0.5
glob.neovide_floating_blur_amount_x = 2.0
glob.neovide_floating_blur_amount_y = 2.0
glob.neovide_scroll_animation_length = 0.3
glob.neovide_refresh_rate = 60
glob.neovide_refresh_rate_idle = 5
glob.neovide_cursor_animation_length = 0.09
glob.neovide_cursor_trail_size = 0.7
glob.neovide_cursor_antialiasing = true
glob.neovide_cursor_vfx_mode = "torpedo"

run('colorscheme sonokai')
