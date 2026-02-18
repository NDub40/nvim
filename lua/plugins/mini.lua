-- lua/plugins/mini.lua
return {
  "echasnovski/mini.nvim",
  config = function()

    -- Auto pairs () [] {} ""
    require("mini.pairs").setup()

    -- Surround: add/delete/replace surroundings
    -- saiw" = surround word with quotes, sd" = delete quotes
    require("mini.surround").setup()

    -- Commenting: gcc = toggle line, gc in visual = toggle selection
    require("mini.comment").setup()

    -- Statusline: clean and lightweight
    require("mini.statusline").setup({
      use_icons = true,
    })

  end,
}
