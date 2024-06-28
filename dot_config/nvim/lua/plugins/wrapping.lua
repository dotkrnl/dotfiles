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
			set_nvim_opt_defaults = false,
			softener = {
				tex = function()
					return true
				end,
				plaintex = function()
					return true
				end,
			},
		})
	end,
}
