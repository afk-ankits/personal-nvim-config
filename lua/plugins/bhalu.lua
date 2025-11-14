return {
  {
    "udayanKashyap/pensieve.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("pensieve").setup({
        pane_height = 12,
      })
    end,
  },
}
