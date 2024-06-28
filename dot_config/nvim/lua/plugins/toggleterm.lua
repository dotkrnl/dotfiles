return {
	plugins = { "akinsho/toggleterm.nvim" },
	setup = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				elseif term.direction == "vertical" then
					return 60
				end
			end,
		})
	end,
}
