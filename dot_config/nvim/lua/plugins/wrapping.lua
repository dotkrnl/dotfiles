return {
	plugins = {
		"andrewferrier/wrapping.nvim",
	},
	setup = function()
		require("wrapping").setup({
			auto_set_mode_filetype_allowlist = {
				"asciidoc",
				"gitcommit",
				"latex",
				"mail",
				"markdown",
				"plaintex",
				"rst",
				"tex",
				"text",
			},
		})
	end,
}
