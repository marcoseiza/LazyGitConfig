return {
  {
    "windwp/nvim-ts-autotag",
    lazy = true,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { "windwp/nvim-ts-autotag" },
    opts = function(_, opts)
      -- See: https://github.com/windwp/nvim-ts-autotag
      opts.autotag = {
        enable = true,
      }
    end,
  },
}
