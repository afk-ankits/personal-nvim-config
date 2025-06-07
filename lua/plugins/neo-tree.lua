return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>e",
        function()
          -- Open neo-tree at current working directory (cwd)
          require("neo-tree.command").execute({ toggle = true, dir = vim.loop.cwd() })
        end,
        desc = "Neo-tree Explorer at cwd",
      },
      {
        "<leader>E",
        function()
          -- Open neo-tree at root directory (adjust root if needed)
          local root_dir = vim.fn.getcwd() -- or your custom root logic
          require("neo-tree.command").execute({ toggle = true, dir = root_dir })
        end,
        desc = "Neo-tree Explorer at root dir",
      },
    },
  },
}
