local vim = vim
vim.opt.termguicolors = true

function SetColor(color)
  color = color or "onedark" -- have a default value
  vim.cmd.colorscheme(color)
  vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "NormalFloat", "NvimTreeNormal" })
  vim.api.nvim_command("TransparentEnable")

  -- Define a function to clear the previous yank highlight
  function Clear_yank_highlight()
    vim.cmd([[noh]])
  end

  -- Automatically highlight yanked text for a short duration
  vim.cmd([[autocmd TextYankPost * lua vim.highlight.on_yank({higroup="IncSearch", timeout=150})]])
  vim.cmd([[autocmd CursorMoved * lua Clear_yank_highlight()]])
  vim.cmd([[autocmd InsertEnter * lua Clear_yank_highlight()]])
end

SetColor() -- run at startup
