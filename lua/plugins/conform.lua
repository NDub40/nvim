-- lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        bash = { "shfmt" },
        markdown = { "prettier" },
        python = { "black" },
        toml = { "taplo" },
        yaml = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })

    -- Manual format keymap
    vim.keymap.set({ "n", "v" }, "<leader>f", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format buffer" })
  end,
}
