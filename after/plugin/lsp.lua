local lsp = require('lsp-zero')
local bind = vim.keymap.set

require('mason.settings').set({
  ui = {
    border = 'rounded'
  }
})

local cmp = require("cmp")
local cmp_config = lsp.defaults.cmp_config({
  window = {
    completion = cmp.config.window.bordered()
  }
})
cmp.setup(cmp_config)


lsp.preset('recommended')
lsp.setup()
lsp.ensure_installed({
	"tsserver",
	"pyright",
	"eslint",
	"sumneko_lua"
})
lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  bind('n', '[r', '<cmd>lua vim.lsp.buf.rename()<cr>', { desc = "[r]emame", buffer = bufnr, remap=false})
  -- more code  ...
end)

bind("n", "[f", "<cmd>LspZeroFormat<cr>", { desc = "[f]ormat file"})
