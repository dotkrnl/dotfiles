return {
	plugins = {
		"sindrets/diffview.nvim",
	},
	setup = function()
		require("diffview").setup({
			diff_binaries = true,
		})
	end,
}
