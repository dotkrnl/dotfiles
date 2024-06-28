vim.g.barbar_auto_setup = false

return {
	plugins = {
		{
			"romgrk/barbar.nvim",
			dependencies = {
				"lewis6991/gitsigns.nvim",
			},
		},
	},
	setup = function()
		require("barbar").setup({
			auto_hide = false,
		})
	end,
}
