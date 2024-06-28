return {
	plugins = {
		{
			"olimorris/codecompanion.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-treesitter/nvim-treesitter",
				"nvim-telescope/telescope.nvim",
				{
					"stevearc/dressing.nvim",
					opts = {},
				},
			},
			config = true,
		},
	},
	setup = function()
		require("codecompanion").setup({
			adapters = {
				anthropic = require("codecompanion.adapters").use("anthropic", {
					env = {
						api_key = "cmd:echo " .. vim.g.OpenAIKey,
					},
					schema = { model = { default = "claude-3-sonnet-20240229" } },
				}),
			},
			strategies = {
				chat = "anthropic",
				inline = "anthropic",
				tool = "anthropic",
			},
		})
	end,
}
