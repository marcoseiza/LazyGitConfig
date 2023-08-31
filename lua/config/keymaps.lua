-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>/", function()
  if vim.bo.buftype == "" then
    return MiniComment.operator() .. "_"
  end
end, { expr = true, desc = "Comment line", silent = true })

vim.keymap.set("x", "<leader>/", [[:<c-u>lua MiniComment.operator('visual')<cr>]], { desc = "Comment selection" })

vim.keymap.set("n", "<leader>Lc", [[:e $MYVIMRC <CR>]], { desc = "LazyVim config" })

vim.keymap.set({ "n", "t" }, "<leader>ft", function()
  require("nvterm.terminal").toggle_all_terms()
end, { desc = "Toggle all terminals" })

vim.keymap.set({ "n", "t" }, "<c-/>", function()
  require("nvterm.terminal").toggle_all_terms()
end, { desc = "Toggle all terminals" })

vim.keymap.set({ "n", "t" }, "<A-i>", function()
  require("nvterm.terminal").toggle("float")
end, { desc = "Open floating terminal" })

vim.keymap.set({ "n", "t" }, "<A-h>", function()
  require("nvterm.terminal").toggle("horizontal")
end, { desc = "Open horizontal terminal" })

vim.keymap.set({ "n", "t" }, "<A-v>", function()
  require("nvterm.terminal").toggle("vertical")
end, { desc = "Open vertical terminal" })

vim.keymap.set("n", "<leader>h", "<cmd>sp<CR>", { desc = "Open horizontal split" })

vim.keymap.set("n", "<leader>v", "<cmd>vsp<CR>", { desc = "Open vertical terminal" })
