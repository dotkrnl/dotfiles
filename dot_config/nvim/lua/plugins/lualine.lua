return {
	plugins = {
		"nvim-lualine/lualine.nvim",
	},
	setup = function()
		require("lualine").setup({
			options = {
				theme = "catppuccin",
			},
		})
	end,
}
