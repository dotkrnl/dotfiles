-- Read Lua package names in a directory
local function read_dir_lua(dir_name)
	local file_list = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/" .. dir_name, [[v:val =~ '\.lua$']])
	local lua_list = {}
	for _, file in ipairs(file_list) do
		lua_list[#lua_list + 1] = dir_name .. "." .. file:gsub("%.lua$", "")
	end
	return lua_list
end

-- Concatenate two tables
local function table_concat(t1, t2)
	for i = 1, #t2 do
		t1[#t1 + 1] = t2[i]
	end
	return t1
end

return {
	-- Load plugins in the plugins directory and setup lazy
	install_plugins = function()
		local lazy_list = {}
		for _, p in ipairs(read_dir_lua("plugins")) do
			lazy_list = table_concat(lazy_list, require(p).plugins)
		end
		lazy_list["checker"] = {
			enabled = true,
		}
		require("lazy").setup(lazy_list)
		for _, p in ipairs(read_dir_lua("plugins")) do
			require(p).setup()
		end
	end,
	read_dir_lua = read_dir_lua,
	-- Require all Lua files in the directory
	require_dir = function(dir_name)
		for _, p in ipairs(read_dir_lua(dir_name)) do
			require(p)
		end
	end,
	table_concat = table_concat,
}
