return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-telescope/telescope-media-files.nvim",
      "xiyaowong/telescope-emoji.nvim",
    },
    config = function()
      local state = require("telescope.state")
      local action_state = require("telescope.actions.state")

      local slow_scroll = function(prompt_bufnr, direction)
        local previewer = action_state.get_current_picker(prompt_bufnr).previewer
        local status = state.get_status(prompt_bufnr)

        -- Check if we actually have a previewer and a preview window
        if type(previewer) ~= "table" or previewer.scroll_fn == nil or status.preview_win == nil then
          return
        end

        previewer:scroll_fn(1 * direction)
      end

      local options = {
        defaults = {
          vimgrep_arguments = {
            "rg",
            "-L",
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
            "--smart-case",
          },
          prompt_prefix = "   ",
          selection_caret = "  ",
          entry_prefix = "  ",
          initial_mode = "insert",
          sorting_strategy = "ascending",
          layout_strategy = "horizontal",
          layout_config = {
            horizontal = {
              prompt_position = "top",
              preview_width = 0.55,
              results_width = 0.8,
            },
            vertical = {
              mirror = true,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
          },
          file_ignore_patterns = { "node_modules" },
          path_display = { "truncate" },
          winblend = 0,
          border = {},
          borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
          color_devicons = true,
          set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
          file_previewer = require("telescope.previewers").vim_buffer_cat.new,
          grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
          qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
          buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
          mappings = {
            n = { ["q"] = require("telescope.actions").close },
            i = {
              ["<C-j>"] = function(bufnr)
                slow_scroll(bufnr, 1)
              end,
              ["<C-k>"] = function(bufnr)
                slow_scroll(bufnr, -1)
              end,
            },
          },
        },
        extensions = {
          media_files = {
            find_cmd = "rg",
          },
          emoji = {
            action = function(emoji)
              Vim.fn.setreg("*", emoji.value)
              Vim.api.nvim_put({ emoji.value }, "c", false, true)
            end,
          },
        },
      }

      require("telescope").setup(options)
      require("telescope").load_extension("media_files")
      require("telescope").load_extension("emoji")
    end,
  },
}
