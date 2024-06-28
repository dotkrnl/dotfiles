-- Normal mode keymaps
require("which-key").register({
	-- correct
	c = {
		g = { "V<cmd>ChatGPTRun grammar_correction<cr>", "ChatGPT correct grammar" },
		p = { "V<cmd>ChatGPTRun paper_polishment<cr>", "ChatGPT polish paper" },
		s = { "V<cmd>ChatGPTRun remove_bullshit<cr>", "ChatGPT remove bullshit" },
	},
	-- goto
	g = {
		D = { "<cmd>lua vim.lsp.buf.declaration()<cr>", "Go to declaration" },
		G = { "<cmd>Telescope live_grep<cr>", "Find in live grep" },
		b = { "<cmd>Telescope buffers<cr>", "Find buffer" },
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to definition" },
		f = { "<cmd>Telescope find_files<cr>", "Find file" },
		h = { "<cmd>Telescope help_tags<cr>", "Find help" },
		t = { "<cmd>Telescope treesitter<cr>", "Find treesitter" },
	},
	-- toggle
	t = {
		C = { "<cmd>DiffviewClose<cr>", "Close diffview" },
		D = { "<cmd>DiffviewOpen<cr>", "Open diffview" },
		d = { "<cmd>Neotree toggle reveal<cr>", "Toggle NeoTree" },
		t = { require("toggleterm").toggle, "Toggle terminal" },
	},
	-- leap
	s = { "<Plug>(leap-forward)", "Leap forward" },
	S = { "<Plug>(leap-backward)", "Leap backward" },
}, {
	mode = "n",
	noremmap = false,
})

-- Visual mode keymaps
require("which-key").register({
	-- correct
	c = {
		g = { "<cmd>ChatGPTRun grammar_correction<cr>", "ChatGPT correct grammar" },
		p = { "<cmd>ChatGPTRun paper_polishment<cr>", "ChatGPT polish paper" },
		s = { "<cmd>ChatGPTRun remove_bullshit<cr>", "ChatGPT remove bullshit" },
	},
	-- toggle
	t = {
		s = {
			function()
				require("toggleterm").send_lines_to_terminal("single_line", true, { args = vim.v.count })
			end,
			"Send to terminal",
		},
	},
	-- leap
	s = { "<Plug>(leap-forward)", "Leap forward" },
	S = { "<Plug>(leap-backward)", "Leap backward" },
}, {
	mode = "v",
	noremmap = false,
	silent = true,
})
