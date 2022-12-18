local glob = vim.g
-- disable netrw at the very start of your init.lua (strongly advised)
-- glob.loaded_netrw = 1
-- glob.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  hijack_netrw = false,
  sort_by = "case_sensitive",
  view = {
    float = { enable = true },
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
