return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  ignore = { "W391", "W503" },
                  maxLineLength = 100,
                },
                rope_completion = {
                  enabled = true,
                },
                rope_autoimport = {
                  enabled = true,
                },
                rope = {
                  folder = "~/rope",
                },
                jedi_completion = {
                  enabled = true,
                }
              },
            },
          },
        },
      },
    },
  },
}
