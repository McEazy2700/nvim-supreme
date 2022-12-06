require("which-key").setup{
    window = {
    border = "shadow", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 2, 0, 2 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0
  },
   layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
}
local wk = require("which-key")
local harpoon_ui = require("harpoon.ui");
local harpoon_mark = require("harpoon.mark");
local harpoon_term = require("harpoon.term");
local telescope_builtin = require('telescope.builtin')

wk.register({
    -- Miscillineous Toggles
    o = {
        name = "Toggle (open/close)",
        e = {"<cmd>NvimTreeToggle<cr>", "Toggle File Exolorer"},
        t = {
            name = "Terminal",
            f = {"<cmd>ToggleTerm direction=float<cr>", "Floating"},
            h = {"<cmd>ToggleTerm direction=horizontal<cr>", "Horizontal"},
            v = {"<cmd>ToggleTerm direction=vertical<cr>", "Vertical"},
            t = {"<cmd>ToggleTerm direction=tab<cr>", "Tab"},
        }
    },

    -- Tabs
    c = {"<cmd>BufferClose<cr>", "Close Buffer"},
    b = {
        name = "Buffers",
        l = {"<cmd>BufferMovePrevious<cr>", "Move Buffer Right"},
        h = {"<cmd>BufferMoveNext<cr>", "Move Buffer Left"}
    },

    -- Telescope
    f = {
        name = "Find",
        f = {telescope_builtin.find_files, "Files"},
        g = {telescope_builtin.git_files, "Git files"},
        t = {telescope_builtin.live_grep, "Text"},
        b = {telescope_builtin.buffers, "Open buffers"},
        c = {telescope_builtin.colorscheme, "Colorschemes"},
        d = {telescope_builtin.diagnostics, "Diagnostics"}
    },

    -- Lsp
    l = {
        name = "Lsp",
        a = {vim.lsp.buf.code_action, "Code Action"},
        k = {vim.diagnostic.goto_next, "Next diagnostic"},
        j = {vim.diagnostic.goto_prev, "Previous diagnostic"},
        r = {vim.lsp.buf.rename, "Rename",}
    },

    -- Markdown
    M = {
        name = "Markdown",
        g = {"<cmd>Glow<cr>", "Glow"},
        p = {"<cmd>PeekOpen<cr>", "Peek"},
        c = {"<cmd>PeekClose<cr>", "Peek Close"}
    },

    -- Harpoon
    h = {
        name = "Harpoon",
        a = {function() harpoon_mark.add_file() end, "Add to harpoon marked"},
        e = {function() harpoon_ui.toggle_quick_menu() end, "Toggle harpoon quick menu"},
        l = {function() harpoon_ui.nav_prev() end, "Jump to previous harpoon mark"},
        h = {function() harpoon_ui.nav_next() end, "Jump to next harpoon mark"},
        t = {
            name = "Termina",
            a = {function() harpoon_term.gotoTerminal(1) end, "Jump to nvim term 1"},
            b = {function() harpoon_term.gotoTerminal(2) end, "Jump to nvim term 2"}
        },
        j = {
            name = "Jump",
            a = {function() harpoon_ui.nav_file(1) end, "Jump to harpoon mark 1"}
        }
    }
},{ prefix = "<leader>"})
