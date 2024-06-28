return {
	plugins = {
		"ggandor/leap.nvim",
	},
	setup = function()
		vim.keymap.set({ "n", "x", "o" }, "s", "<Plug>(leap-forward)")
		vim.keymap.set({ "n", "x", "o" }, "S", "<Plug>(leap-backward)")
	end,
}
