return {
	plugins = {
		{
			"mikesmithgh/kitty-scrollback.nvim",
			enabled = true,
			lazy = true,
			cmd = { "KittyScrollbackGenerateKittens", "KittyScrollbackCheckHealth" },
			event = { "User KittyScrollbackLaunch" },
		},
	},
	setup = function()
		require("kitty-scrollback").setup({ {
			status_window = { enabled = false },
		} })
	end,
}
