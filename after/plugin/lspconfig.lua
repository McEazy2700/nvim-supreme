local keymap = require("vice.keymap")
-- LSP settings (for overriding per client)

local border = {
      {"🭽", "FloatBorder"},
      {"▔", "FloatBorder"},
      {"🭾", "FloatBorder"},
      {"▕", "FloatBorder"},
      {"🭿", "FloatBorder"},
      {"▁", "FloatBorder"},
      {"🭼", "FloatBorder"},
      {"▏", "FloatBorder"},
}

local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = border}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = border }),
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_opts = {
    handlers = handlers,
    capabilities = capabilities,
    on_attach = function()
        keymap.buff_nnoremap("K", vim.lsp.buf.hover)
        keymap.buff_nnoremap("gd", vim.lsp.buf.definition)
        keymap.buff_nnoremap("gT", vim.lsp.buf.type_definition)
        keymap.buff_nnoremap("gi", vim.lsp.buf.implementation)
        keymap.buff_nnoremap("<leader>lk", vim.diagnostic.goto_next)
        keymap.buff_nnoremap("<leader>lj", vim.diagnostic.goto_prev)
        keymap.buff_nnoremap("<leader>lr", vim.lsp.buf.rename)
        keymap.buff_nnoremap("<leader>la", vim.lsp.buf.code_action)
    end
}


require("mason-lspconfig").setup_handlers {
    -- The first entry (without a key) will be the default handler
    -- and will be called for each installed server that doesn't have
    -- a dedicated handler.
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            capabilities = lsp_opts.capabilities,
            handlers = lsp_opts.handlers,
            on_attach = lsp_opts.on_attach
        }
    end,
    -- Next, you can provide a dedicated handler for specific servers.
    -- For example, a handler override for the `rust_analyzer`:
}
