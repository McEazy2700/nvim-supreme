return {
    {
        "nvimtools/none-ls.nvim",
        dependencies = {
            "nvimtools/none-ls-extras.nvim"
        },
        config = function()
            local async_formatting = function(bufnr)
                bufnr = bufnr or Vim.api.nvim_get_current_buf()

                Vim.lsp.buf_request(
                    bufnr,
                    "textDocument/formatting",
                    Vim.lsp.util.make_formatting_params({}),
                    function(err, res, ctx)
                        if err then
                            local err_msg = type(err) == "string" and err or err.message
                            -- you can modify the log message / level (or ignore it completely)
                            Vim.notify("formatting: " .. err_msg, Vim.log.levels.WARN)
                            return
                        end

                        -- don't apply results if buffer is unloaded or has been modified
                        if not Vim.api.nvim_buf_is_loaded(bufnr) or Vim.api.nvim_buf_get_option(bufnr, "modified") then
                            return
                        end

                        if res then
                            local client = Vim.lsp.get_client_by_id(ctx.client_id)
                            Vim.lsp.util.apply_text_edits(res, bufnr, client and client.offset_encoding or "utf-16")
                            Vim.api.nvim_buf_call(bufnr, function()
                                Vim.cmd("silent noautocmd update")
                            end)
                        end
                    end
                )
            end

            local null_ls = require("null-ls")

            local augroup = Vim.api.nvim_create_augroup("LspFormatting", {})

            null_ls.setup({
                sources = {
                    null_ls.builtins.formatting.stylua,
                    null_ls.builtins.completion.spell,
                    null_ls.builtins.formatting.prettier,
                    null_ls.builtins.formatting.black,
                    require("none-ls.diagnostics.eslint"),
                },
                debug = false,
                on_attach = function(client, bufnr)
                    if client.supports_method("textDocument/formatting") then
                        Vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                        Vim.api.nvim_create_autocmd("BufWritePost", {
                            group = augroup,
                            buffer = bufnr,
                            callback = function()
                                async_formatting(bufnr)
                            end,
                        })
                    end
                end,
            })
        end
    }
}
