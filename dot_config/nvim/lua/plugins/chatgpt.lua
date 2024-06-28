return {
	plugins = {
		{
			"jackMort/ChatGPT.nvim",
			event = "VeryLazy",
			dependencies = {
				"MunifTanjim/nui.nvim",
				"nvim-lua/plenary.nvim",
				"folke/trouble.nvim",
				"nvim-telescope/telescope.nvim",
			},
		},
	},
	setup = function()
		require("chatgpt").setup({
			api_key_cmd = "echo " .. vim.g.OpenAIKey,
			openai_params = { model = "gpt-4o" },
			openai_edit_params = { model = "gpt-4o" },
			actions_paths = { "~/.config/nvim/json/gpt-actions.json" },
		})
	end,
}
