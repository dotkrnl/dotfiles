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
		vim.keymap.set("n", "tt", toggleterm.toggle, { silent = true })
		vim.keymap.set("n", "tc", function()
			local Terminal = require("toggleterm.terminal").Terminal
			Terminal:new({
				name = "GPT",
				cmd = "sgpt --role General --repl temp",
				direction = "vertical",
			}):toggle()
		end)
		local opts = { buffer = 0 }
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
		vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
		vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
		vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
		vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
		vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
		vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
	end,
}
