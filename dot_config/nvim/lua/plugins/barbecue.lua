return {
	plugins = {
		{
			"utilyre/barbecue.nvim",
			dependencies = {
				"SmiteshP/nvim-navic",
				"nvim-tree/nvim-web-devicons",
			},
		},
	},
	setup = function()
		-- triggers CursorHold event faster
		vim.opt.updatetime = 200

		require("barbecue").setup({
			theme = "catppuccino-mocha",
			show_dirname = false,
			show_basename = false,
		})

		vim.api.nvim_create_autocmd({
			"WinResized",
			"BufWinEnter",
			"CursorHold",
			"InsertLeave",
		}, {
			group = vim.api.nvim_create_augroup("barbecue.updater", {}),
			callback = function()
				require("barbecue.ui").update()
			end,
		})
	end,
}
