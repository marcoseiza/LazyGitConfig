-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if os.execute("which figterm > /dev/null 2>&1") == 0 then
  vim.fn.setenv("FIG_TERM", nil)
end
