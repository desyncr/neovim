return {
  "https://git.sr.ht/~foosoft/argonaut.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  keys = {
    { "<leader>aw", "<cmd>ArgonautToggle<cr>", desc = "Toggle Argument Wrap (Argonaut)" },
  },
  opts = {
    -- Add any custom configuration options here if needed
  },
}
