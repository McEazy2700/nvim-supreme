local plugin_dir = Vim.fn.stdpath("config") .. "/lua/plugins"

local function load_plugins_from_dir(dir)
	local combined_results = {

		{ "folke/neoconf.nvim", cmd = "Neoconf" },
		"folke/neodev.nvim",
	}

	local handle = Vim.loop.fs_scandir(dir)
	if not handle then
		return
	end

	while true do
		local name, filetype = Vim.loop.fs_scandir_next(handle)
		if not name then
			break
		end

		if filetype == "file" and name:sub(-4) == ".lua" and name ~= "init.lua" then
			local module_name = name:sub(1, -5)
			local ok, result = pcall(require, "plugins." .. module_name)
			if ok then
				if type(result) == "table" then
					for _, value in ipairs(result) do
						table.insert(combined_results, value)
					end
				end
			end
		end
	end

	return combined_results
end
require("lazy").setup(load_plugins_from_dir(plugin_dir))
