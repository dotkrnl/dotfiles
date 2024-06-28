return {
	plugins = {
		"nvim-treesitter/nvim-treesitter",
	},
	setup = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			highlight = { enable = true },
		})
	end,
}
