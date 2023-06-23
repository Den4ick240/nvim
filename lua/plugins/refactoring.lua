vim.api.nvim_set_keymap(
  "v",
  "<leader>rf",
  "<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
  { noremap = true, desc = "Refactoring options" }
)

return {
  "ThePrimeagen/refactoring.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    prompt_func_return_type = {
      go = false,
      java = false,

      cpp = false,
      c = false,
      h = false,
      hpp = false,
      cxx = false,
    },
    prompt_func_param_type = {
      go = false,
      java = false,

      cpp = false,
      c = false,
      h = false,
      hpp = false,
      cxx = false,
    },
    printf_statements = {},
    pfint_var_statements = {},
  },
  init = function()
    require("telescope").load_extension("refactoring")
  end,
}
