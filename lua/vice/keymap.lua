--- Binds a keymap in a mode to an action
-- @param mode The mode in which this operation will take place {n:'normal mode', v:'visual mode', i: 'insert mode'}
-- @param outer_opts Extra options that will be applied to this keymap
function bind(mode, outer_opts)
	return function(lhs, rhs, opts)
		opts = vim.tbl_extend("force", {}, outer_opts or {}, opts or {});
		vim.keymap.set(mode, lhs, rhs, opts);
	end
end

local M = {}
M.nnoremap = bind("n");
M.inoremap = bind("i");
M.vnoremap = bind("v");
M.tnoremap = bind("t");

M.buff_nnoremap = bind("n", {buffer = 0});
M.buff_inoremap = bind("i", {buffer = 0});
M.buff_vnoremap = bind("v", {buffer = 0});
M.buff_tnoremap = bind("t", {buffer = 0});
return M
