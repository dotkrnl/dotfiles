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
			openai_params = {
				model = "gpt-4o",
			},
			openai_edit_params = {
				model = "gpt-4o",
			},
			edit_with_instructions = {
				diff = true,
			},
			actions_paths = { "~/.config/nvim/json/gpt-actions.json" },
		})
		vim.keymap.set({ "n" }, "ca", "V:ChatGPTActAs<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cc", "V:ChatGPT<CR>", { silent = true })
		vim.keymap.set({ "n" }, "ce", "V:ChatGPTEditWithInstructions<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cg", "V:ChatGPTRun grammar_correction<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cp", "V:ChatGPTRun paper_polishment<CR>", { silent = true })
		vim.keymap.set({ "n" }, "cs", "V:ChatGPTRun remove_bullshit<CR>", { silent = true })
		vim.keymap.set({ "v" }, "ca", ":ChatGPTActAs<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cc", ":ChatGPT<CR>", { silent = true })
		vim.keymap.set({ "v" }, "ce", ":ChatGPTEditWithInstructions<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cg", ":ChatGPTRun grammar_correction<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cp", ":ChatGPTRun paper_polishment<CR>", { silent = true })
		vim.keymap.set({ "v" }, "cs", ":ChatGPTRun remove_bullshit<CR>", { silent = true })
	end,
}
