return {
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require("dap-vscode-js").setup({
        -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
        debugger_path = "/home/den4ick240/.local/share/nvim/lazy/vscode-js-debug",
        -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
        adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
        -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
        -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
        -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
      })

      -- for _, language in ipairs({ "typescript", "javascript" }) do
      --   require("dap").configurations[language] = {
      --     {
      --       type = "pwa-node",
      --       request = "launch",
      --       name = "Launch file",
      --       program = "/home/den4ick240/Programming/ftd/ts_stubs/addMethodDescriptions.js",
      --       cwd = "/home/den4ick240/Programming/ftd/ts_stubs/test/",
      --     },
      --     {
      --       type = "pwa-node",
      --       request = "attach",
      --       name = "Attach",
      --       processId = require 'dap.utils'.pick_process,
      --       cwd = "${workspaceFolder}",
      --     }
      --
      --   }
      -- end
    end,
  },
  {
    "microsoft/vscode-js-debug",
    lazy = true,
    build = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out"
  }
}
