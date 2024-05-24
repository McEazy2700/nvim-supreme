local lazypath = Vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (Vim.uv or Vim.loop).fs_stat(lazypath) then
  Vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
Vim.opt.rtp:prepend(lazypath)
