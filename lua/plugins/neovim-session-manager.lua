return {
  "Shatur/neovim-session-manager",
  opts = {
    autosave_ignore_dirs = { "~/", "~/Projects", "~/Downloads", "/" }, -- A list of directories where the session will not be autosaved.
  },
  keys = {
    {
      "<leader>sp",
      function()
        require("session_manager").load_session(false)
      end,
      desc = "Search sessions",
    },
  },
}
