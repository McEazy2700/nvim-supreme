local set = vim.opt
local run = vim.cmd
local glob = vim.g

-- Color Scheme
-- run('colorscheme embark')
require('github-theme').setup({
  comment_style = "italic",
  keyword_style = "italic",
  variable_style = "italic",
  theme_style = "dark",
  function_style = "italic",
  sidebars = {"qf", "vista_kind", "terminal", "packer"},

  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  -- colors = {hint = "orange", error = "#ff0000"},

  -- Overwrite the highlight groups
  overrides = function(c)
    return {
      htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
      -- DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
      -- this will remove the highlight groups
      TSField = {},
    }
  end
})

-- Regular Stuff
set.guicursor = ""
set.swapfile = false
set.backup = false
set.number = true
set.relativenumber = true
set.tabstop = 4
set.shiftwidth = 4
set.guifont = {"Meslo", "h8"}
set.softtabstop = 4
set.expandtab = true
set.smartindent = true
set.termguicolors = true


-- Neovide
glob.neovide_scale_factor = 0.89
glob.neovide_transparency = 0.6
glob.transparency = 0.8
glob.neovide_floating_blur_amount_x = 2.0
glob.neovide_floating_blur_amount_y = 2.0
glob.neovide_scroll_animation_length = 0.3
glob.neovide_refresh_rate = 60
glob.neovide_refresh_rate_idle = 5
glob.neovide_cursor_animation_length = 0.09
glob.neovide_cursor_trail_size = 0.7
glob.neovide_cursor_antialiasing = true
glob.neovide_cursor_vfx_mode = "torpedo"

