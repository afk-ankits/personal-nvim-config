return {
  {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,
      float = {
        transparent = true, -- enable transparent floating windows
      },
    },
  },
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
      -- styles = {
      --   sidebars = "transparent", -- optional: applies to sidebars like Neo-tree
      -- },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    opts = {
      contrast = "hard",
    },
  },
  -- {
  --   "LazyVim/LazyVim",
  --   opts = {
  --     colorscheme = "gruvbox",
  --   },
  -- },
}
