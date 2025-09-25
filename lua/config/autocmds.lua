-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_user_command("VSCodeOpen", function()
  local filepath = vim.fn.expand("%:p")
  local line = vim.fn.line(".")
  vim.fn.system({ "code", "-g", filepath .. ":" .. line })
end, {})
