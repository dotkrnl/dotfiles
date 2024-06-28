return {
	plugins = {
		"neovim/nvim-lspconfig",
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	setup = function()
		require("mason").setup({})
		require("mason-lspconfig").setup({
			ensure_installed = {
				"cssls",
				"eslint",
				"html",
				"htmx",
				"lua_ls",
				"pyright",
				"quick_lint_js",
				"ruff",
				"rust_analyzer",
				"tailwindcss",
				"taplo",
				"tsserver",
				"yamlls",
			},
		})

		local lspconfig = require("lspconfig")
		lspconfig.cssls.setup({})
		lspconfig.eslint.setup({ root_dir = lspconfig.util.root_pattern("package.json") })
		lspconfig.html.setup({})
		lspconfig.htmx.setup({ root_dir = lspconfig.util.root_pattern("package.json") })
		lspconfig.lua_ls.setup({ settings = { Lua = { diagnostics = { globals = { "vim" } } } } })
		lspconfig.pyright.setup({ root_dir = lspconfig.util.root_pattern("pyproject.toml") })
		lspconfig.quick_lint_js.setup({})
		lspconfig.ruff.setup({ root_dir = lspconfig.util.root_pattern("pyproject.toml") })
		lspconfig.rust_analyzer.setup({ root_dir = lspconfig.util.root_pattern("Cargo.toml") })
		lspconfig.tailwindcss.setup({})
		lspconfig.taplo.setup({})
		lspconfig.tsserver.setup({ root_dir = lspconfig.util.root_pattern("package.json") })
		lspconfig.yamlls.setup({})
	end,
}
