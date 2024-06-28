return {
	plugins = {
		"stevearc/conform.nvim",
	},
	setup = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "isort", "black" },
				html = { "djlint" },
				javascript = { { "prettierd", "prettier" } },
				typescript = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_fallback = true,
			},
		})
	end,
}
