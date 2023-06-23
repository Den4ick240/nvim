-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

_G.xelatexcheck = function()
  local isxelatex = false
  local fifteenlines = vim.api.nvim_buf_get_lines(0, 0, 15, false)
  for l, line in ipairs(fifteenlines) do
    if
      (line:lower():match("lualatex"))
      or (line:match("\\usepackage[^}]*mathspec"))
      or (line:match("\\usepackage[^}]*fontspec"))
      or (line:match("\\usepackage[^}]*unicode-math"))
    then
      isxelatex = true
      break
    end
  end
  if isxelatex then
    local knapsettings = vim.b.knap_settings or {}
    knapsettings["textopdf"] = "lualatex -interaction=nonstopmode -synctex=1 %docroot%"
    vim.b.knap_settings = knapsettings
  end
end

vim.api.nvim_create_autocmd({ "BufRead" }, { pattern = { "*.tex" }, callback = xelatexcheck })
