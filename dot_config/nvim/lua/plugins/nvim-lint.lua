return {
	plugins = {
		"mfussenegger/nvim-lint",
	},
	setup = function()
		require("lint").linters_by_ft = {
			html = { "djlint" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
