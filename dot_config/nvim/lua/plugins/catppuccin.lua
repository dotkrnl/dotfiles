return {
	plugins = {
		"catppuccin/nvim",
	},
	setup = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				barbar = true,
				barbecue = {
					dim_dirname = true,
					bold_basename = true,
					dim_context = true,
					alt_background = true,
				},
				notifier = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
