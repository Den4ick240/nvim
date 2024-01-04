return {
  "nvimtools/none-ls.nvim",
  opts = {
    sources = {
      require("null-ls").builtins.formatting.black,
      require("null-ls").builtins.formatting.beautysh,
      require("null-ls").builtins.formatting.prettierd,
      require("null-ls").builtins.formatting.clang_format,
    },
  },
}
