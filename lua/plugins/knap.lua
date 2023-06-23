-- set shorter name for keymap function
local kmap = vim.keymap.set

kmap({ "n", "v", "i" }, "<F5>", function()
  require("knap").process_once()
end, { desc = "processes the document once, and refreshes the view" })

kmap({ "n", "v", "i" }, "<F6>", function()
  require("knap").close_viewer()
end, { desc = "closes the viewer application, and allows settings to be reset" })

kmap({ "n", "v", "i" }, "<F7>", function()
  require("knap").toggle_autopreviewing()
end, { desc = "toggles the auto-processing on and off" })

kmap({ "n", "v", "i" }, "<F8>", function()
  require("knap").forward_jump()
end, { desc = "invokes a SyncTeX forward search, or similar, where appropriate" })

return {
  "frabjous/knap",
}
