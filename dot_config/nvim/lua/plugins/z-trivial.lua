return {
	plugins = {
		"dmadisetti/AirLatex.vim",
		"dstein64/vim-startuptime",
		"github/copilot.vim",
		"lervag/vimtex",
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
		"RRethy/vim-illuminate",
		{
			"windwp/nvim-autopairs",
			event = "InsertEnter",
			config = true,
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		},
		{
			"utilyre/barbecue.nvim",
			dependencies = {
				"SmiteshP/nvim-navic",
			},
			opts = { theme = "catppuccin-mocha" },
		},
		"vigoux/notifier.nvim",
	},
	setup = function() end,
}
