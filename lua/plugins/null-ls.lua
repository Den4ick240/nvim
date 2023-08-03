return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = {
    sources = {
      require("null-ls").builtins.formatting.black,
      require("null-ls").builtins.formatting.beautysh,
      require("null-ls").builtins.formatting.prettierd,
    },
  },
}
