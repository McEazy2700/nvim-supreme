local vim = vim
local Funcs = {
    goto_context = function()
        require("treesitter-context").go_to_context()
    end
}

return Funcs
