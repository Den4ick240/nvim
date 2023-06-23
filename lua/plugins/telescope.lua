return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "vertical",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    keys = {
      {
        "<leader>sf",
        ":Telescope file_browser path=%:p:h=%:p:h<cr>",
        desc = "Browse Files",
      },
      {
        "<leader>sl",
        require("telescope.builtin").resume,
        desc = "Resume last search",
      },
    },
    config = function()
      require("telescope").load_extension("file_browser")
    end,
  },
}
