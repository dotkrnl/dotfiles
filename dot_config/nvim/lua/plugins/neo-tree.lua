return {
	plugins = {
		{
			"nvim-neo-tree/neo-tree.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons",
				"MunifTanjim/nui.nvim",
			},
		},
	},
	setup = function()
		require("neo-tree").setup({
			auto_open = true,
			auto_close = true,
			default_component_configs = {
				container = {
					enable_character_fade = true,
				},
				indent = {
					indent_size = 1,
					padding_size = 0,
				},
			},
			enable_git_status = true,
			enable_diagnostics = true,
			filesystem = {
				filtered_items = { visible = true },
			},
			open_files_do_not_replace_types = {
				"terminal",
				"trouble",
				"qf",
			},
			update_focused_file = { enable = true },
			window = {
				position = "left",
				width = 20,
			},
		})
	end,
}
