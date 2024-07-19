return {
	plugins = {
		"stevearc/conform.nvim",
	},
	setup = function()
		require("conform").setup({
			formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
				html = { "djlint" },
				javascript = { { "prettierd", "prettier" } },
				lua = { "stylua" },
				python = { "isort", "black" },
				typescript = { { "prettierd", "prettier" } },
				typescriptreact = { { "prettierd", "prettier" } },
			},
			format_on_save = {
				timeout_ms = 5000,
				lsp_format = "fallback",
			},
			notify_on_error = true,
		})
	end,
}
