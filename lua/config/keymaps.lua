-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("i", "sj", "<Esc>", { noremap = true })
vim.api.nvim_set_keymap("i", "ыо", "<Esc>", { noremap = true })

vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", '"_dhp')
vim.keymap.set("x", "<leader>P", '"_dP')
vim.keymap.set("x", "<leader>c", '"_c')
vim.keymap.set("x", "<leader>d", '"_d')

vim.keymap.set("n", "<C-q>", function()
  local wins = vim.api.nvim_tabpage_list_wins(0)
  local win_amount = 0
  for i, w in ipairs(wins) do
    if not vim.api.nvim_win_get_config(w).zindex then
      win_amount = win_amount + 1
    end
  end
  if win_amount == 1 then
    require("mini.bufremove").delete(0, false)
  else
    vim.api.nvim_win_close(0, false)
  end
end, { desc = "Delete buffer" })
