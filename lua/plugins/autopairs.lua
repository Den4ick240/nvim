return {
  { "echasnovski/mini.pairs", enabled = false },
  {
    "windwp/nvim-autopairs",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    init = function()
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      local cmp = require("cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
    end,
    opts = {
      check_ts = true,
      ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
        java = false,
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    init = function()
      require("nvim-treesitter.configs").setup({
        autotag = {
          enable = true,
        },
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "windwp/nvim-autopairs",
    },
  },
}
