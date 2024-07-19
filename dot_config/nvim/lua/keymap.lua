-- Normal mode keymaps
require("which-key").add({
  { "S",  "<Plug>(leap-backward)",                   desc = "Leap backward" },
  -- correct
  { "cg", "V<cmd>ChatGPTRun grammar_correction<cr>", desc = "ChatGPT correct grammar" },
  { "cp", "V<cmd>ChatGPTRun paper_polishment<cr>",   desc = "ChatGPT polish paper" },
  { "cs", "V<cmd>ChatGPTRun remove_bullshit<cr>",    desc = "ChatGPT remove bullshit" },
  -- goto
  { "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>",  desc = "Go to declaration" },
  { "gG", "<cmd>Telescope live_grep<cr>",            desc = "Find in live grep" },
  { "gb", "<cmd>Telescope buffers<cr>",              desc = "Find buffer" },
  { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>",   desc = "Go to definition" },
  { "gf", "<cmd>Telescope find_files<cr>",           desc = "Find file" },
  { "gh", "<cmd>Telescope help_tags<cr>",            desc = "Find help" },
  { "gt", "<cmd>Telescope treesitter<cr>",           desc = "Find treesitter" },
  { "s",  "<Plug>(leap-forward)",                    desc = "Leap forward" },
  -- toggle
  { "tC", "<cmd>DiffviewClose<cr>",                  desc = "Close diffview" },
  { "tD", "<cmd>DiffviewOpen<cr>",                   desc = "Open diffview" },
  { "td", "<cmd>Neotree toggle reveal<cr>",          desc = "Toggle NeoTree" },
  { "tt", require("toggleterm").toggle,              desc = "Toggle terminal" },
}, {
  mode = "n",
  noremmap = false,
})

-- Visual mode keymaps
require("which-key").add({
  { "S",  "<Plug>(leap-backward)",                  desc = "Leap backward" },
  -- correct
  { "cg", "<cmd>ChatGPTRun grammar_correction<cr>", desc = "ChatGPT correct grammar" },
  { "cp", "<cmd>ChatGPTRun paper_polishment<cr>",   desc = "ChatGPT polish paper" },
  { "cs", "<cmd>ChatGPTRun remove_bullshit<cr>",    desc = "ChatGPT remove bullshit" },
  { "s",  "<Plug>(leap-forward)",                   desc = "Leap forward" },
  -- toggle
  {
    "ts",
    function()
      require("toggleterm").send_lines_to_terminal("single_line", true, { args = vim.v.count })
    end,
    desc = "Send to terminal"
  },
}, {
  mode = "v",
  noremmap = false,
  silent = true,
})
