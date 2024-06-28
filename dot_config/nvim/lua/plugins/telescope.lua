return {
	plugins = {
		"nvim-telescope/telescope.nvim",
	},
	setup = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<Leader>fb", builtin.buffers, {})
		vim.keymap.set("n", "<Leader>ff", builtin.find_files, {})
		vim.keymap.set("n", "<Leader>fg", builtin.live_grep, {})
		vim.keymap.set("n", "<Leader>fh", builtin.help_tags, {})
		vim.keymap.set("n", "<Leader>ft", builtin.treesitter, {})
	end,
}
