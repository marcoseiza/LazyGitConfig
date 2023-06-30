return {
  "NvChad/nvterm",
  config = function()
    require("nvterm").setup({
      terminals = {
        type_opts = {
          float = {
            row = 0.15,
            col = 0.15,
            width = 0.7,
            height = 0.6,
          },
        },
      },
    })
  end,
}
