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
		vim.keymap.set({ "n" }, "cg", "V:ChatGPTRun grammar_correction<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cp", "V:ChatGPTRun paper_polishment<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cs", "V:ChatGPTRun remove_bullshit<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cg", ":ChatGPTRun grammar_correction<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cp", ":ChatGPTRun paper_polishment<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cs", ":ChatGPTRun remove_bullshit<CR>", { silent = true })
	end,
}
