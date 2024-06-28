return {
	plugins = {
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		},
	},
	setup = function() end,
}
