return {
  'HiPhish/rainbow-delimiters.nvim',
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
  },
  init = function()
    require('nvim-treesitter.configs').setup {
      rainbow = {
        enable = true,
        query = 'rainbow-parens',
      }
    }
  end
}
