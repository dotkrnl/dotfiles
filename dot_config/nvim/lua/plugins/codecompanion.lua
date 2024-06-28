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
					env = { api_key = "cmd:echo " .. vim.g.OpenAIKey },
					schema = { model = { default = "claude-3-5-sonnet-20240620" } },
				}),
				openai = require("codecompanion.adapters").use("openai", {
					env = { api_key = "cmd:echo " .. vim.g.OpenAIKey },
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
