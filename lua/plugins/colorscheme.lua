-- lua/plugins/colorscheme.lua
return {
  "Mofiqul/dracula.nvim",
  lazy = false, -- load immediately
  priority = 1000,
  config = function()
    require("dracula").setup({
      -- Customize for Miss Dracula vibe (VSCode thme originally)
      colors = {
        bg = "#2d1e3f", -- deeper purple bg (adjust if needed)
        fg = "#f8f8f2",
        comment = "#6272a4",
        pink = "#ff79c6", -- ★ make this dominant
        purple = "#bd93f9",
        cyan = "#8be9fd", -- keep subdued or override to pink if you want
        green = "#50fa7b",
        yellow = "#f1fa8c",
        orange = "#ffb86c",
        red = "#ff5555",
        selection = "#44475a",
        -- Optional: make pink even more prominent
      },
      -- Optional overrides for Treesitter/LSP
      transparent_bg = false, -- or true for floating windows
      lualine_bg = "#2d1e3f",
      -- Example: force pink on functions/keywords
      overrides = {
        ["@function"] = { fg = "#ff79c6" },
        ["@keyword"] = { fg = "#ff79c6" },
      },
    })
    vim.cmd.colorscheme "dracula"
  end,
}
