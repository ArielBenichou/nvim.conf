-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- HARPOON
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():append()
end, { desc = "Add an Harpoon Mark" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Open Harpoon Quick Menu" })

vim.keymap.set("n", "<C-j>", function()
  harpoon:list():select(1)
end, { desc = "Navigate to Harpoon #1 File" })
vim.keymap.set("n", "<C-k>", function()
  harpoon:list():select(2)
end, { desc = "Navigate to Harpoon #2 File" })
vim.keymap.set("n", "<C-l>", function()
  harpoon:list():select(3)
end, { desc = "Navigate to Harpoon #3 File" })
vim.keymap.set("n", "<C-h>", function()
  harpoon:list():select(4)
end, { desc = "Navigate to Harpoon #4 File" })

-- TMUX SESSIONIZER by ThePrimeagen
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open TMUX-Sessionizer" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down one line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up one line" })

-- RSYNC FTP
vim.keymap.set("n", "<leader>bs", function()
  local current_buffer_path = vim.fn.expand("%")
  if type(current_buffer_path) ~= "string" then
    return
  end
  current_buffer_path = "/Users/arielbenichou/work/networx-code/cgi/run_unit.sh"
  local project_root = "/Users/arielbenichou/work/networx-code"
  local relative_path = current_buffer_path:gsub(project_root, "")
  print(relative_path)
end, { desc = "Sync current buffer with rsync" })
