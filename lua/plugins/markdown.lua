return {
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*",
    lazy = true,
    ft = "markdown",
    dependencies = { "nvim-lua/plenary.nvim" },
    opt = {
      workspaces = {
        {
          name = "personal",
          path = "~/vaults/personal", --Must match the folder you open iin Obsidian
        },
      },
      -- Daily Notes Config
      daily_notes = {
        folder = "dailies",             -- Subdirectory in my vault
        date_format = "%Y-%m-%d",
        template = "daily_template.md", -- File must exist in my template folder
      },
      -- Template Configuration
      templates = {
        subdir = "templates",
        date_format = "%Y-%m-%d",
        time_format = "%I:%M",
      },
    },
  },
  -- Keep previewer
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle" },
    ft = { "markdown" },
    -- This doesnt rely on vim function
    build = "cd app & npm install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
}
