-- lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  opts = {
    ensure_installed = {
      "bash",
      "lua",
      "luadoc",
      "vim",
      "yaml",
      "json",
      "python",
      "markdown",
      "markdown_inline",
    },
    auto_install = true,
    highlight = { enable = true },
    indent = { enable = true },
  },
}

