-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>/", function()
  if vim.bo.buftype == "" then
    return MiniComment.operator() .. "_"
  end
end, { expr = true, desc = "Comment line", silent = true })

vim.keymap.set("x", "<leader>/", [[:<c-u>lua MiniComment.operator('visual')<cr>]], { desc = "Comment selection" })

vim.keymap.set({ "n", "t" }, "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<leader>ft", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<c-/>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Terminal (root dir)" })

vim.keymap.set({ "n", "t" }, "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<leader>h", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<leader>v", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Open floating terminal" })
