return {
	plugins = {
		{
			"nvim-neo-tree/neo-tree.nvim",
			dependencies = { "MunifTanjim/nui.nvim" },
		},
	},
	setup = function()
		local neotree = require("neo-tree")
		neotree.setup({
			auto_open = true,
			auto_close = true,
			update_focused_file = { enable = true },
			default_component_configs = {
				indent = {
					indent_size = 1,
					padding_size = 0,
				},
			},
		})
		vim.keymap.set("n", "td", ":Neotree<CR>", { silent = true })
	end,
}
