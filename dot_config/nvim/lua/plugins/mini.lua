return {
	plugins = {
		"echasnovski/mini.nvim",
	},
	setup = function()
		require("mini.ai").setup({})
		require("mini.basics").setup({})
		require("mini.comment").setup({})
		require("mini.diff").setup({})
		require("mini.hipatterns").setup({
			highlighters = {
				fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
				hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
				todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
				note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
				hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
			},
		})
		require("mini.operators").setup({})
		require("mini.surround").setup({})
	end,
}
