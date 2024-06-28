return {
	plugins = {
		"catppuccin/nvim",
	},
	setup = function()
		require("catppuccin").setup({
			flavour = "mocha",
			integrations = {
				barbar = true,
				barbecue = {
					dim_dirname = true,
					bold_basename = true,
					dim_context = true,
					alt_background = true,
				},
				cmp = true,
				diffview = true,
				fidget = true,
				leap = true,
				markdown = true,
				mason = true,
				mini = { enabled = true },
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
						ok = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
						ok = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				neotree = true,
        rainbow_delimiters = true,
				telescope = {
					enabled = true,
				},
				treesitter = true,
				treesitter_context = true,
				which_key = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
