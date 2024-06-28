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
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local setup_lspconfig = function(server, config)
			lspconfig[server].setup(vim.tbl_deep_extend("force", {
				capabilities = capabilities,
			}, config))
		end

		setup_lspconfig("cssls", {})
		setup_lspconfig("eslint", { root_dir = lspconfig.util.root_pattern("package.json") })
		setup_lspconfig("html", {})
		setup_lspconfig("htmx", { root_dir = lspconfig.util.root_pattern("package.json") })
		setup_lspconfig("lua_ls", {
			settings = { Lua = { diagnostics = { globals = { "vim" } } } },
		})
		setup_lspconfig("pyright", { root_dir = lspconfig.util.root_pattern("pyproject.toml") })
		setup_lspconfig("quick_lint_js", {})
		setup_lspconfig("ruff", { root_dir = lspconfig.util.root_pattern("pyproject.toml") })
		setup_lspconfig("rust_analyzer", { root_dir = lspconfig.util.root_pattern("Cargo.toml") })
		setup_lspconfig("tailwindcss", {})
		setup_lspconfig("taplo", {})
		setup_lspconfig("tsserver", { root_dir = lspconfig.util.root_pattern("package.json") })
		setup_lspconfig("yamlls", {})
	end,
}
