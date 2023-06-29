-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>/", function()
  return MiniComment.operator() .. "_"
end, { expr = true, desc = "Comment line" })

vim.keymap.set("x", "<leader>/", [[:<c-u>lua MiniComment.operator('visual')<cr>]], { desc = "Comment selection" })
