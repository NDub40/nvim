-- lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("fzf")
  end,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>" },
    { "<leader>fs", "<cmd>Telescope lsp_document_symbols<cr>" },
  },
}

