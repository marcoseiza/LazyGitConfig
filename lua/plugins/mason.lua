return {
  { "microsoft/vscode-css-languageservice" },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
      },
    },
  },
}
