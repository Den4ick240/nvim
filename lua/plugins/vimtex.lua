vim.g.vimtex_compiler_latexmk = {
  executable = "latexmk",
  options = {
    "-interaction=nonstopmode",
    "-bibtex",
  },
}
vim.g.vimtex_quickfix_ignore_filters = {
  "Underfull",
  "Overfull",
  "fontspec",
  "fontenc",
  "Generic hook",
  'Missing "journal"',
}
vim.g.vimtex_compiler_latexmk_engines = {
  lualatex = "-lualatex",
}

vim.g.vimtex_compiler_progname = "nvr"

vim.g.vimtex_view_method = "sioyek"

return {
  "lervag/vimtex",
}
