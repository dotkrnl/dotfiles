return {
	plugins = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-treesitter/nvim-treesitter-context",
	},
	setup = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = "all",
			highlight = { enable = true },
		})
		require("treesitter-context").setup({
			enable = true,
		})
	end,
}
