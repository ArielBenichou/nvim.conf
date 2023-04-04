local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd an Harpoon Mark" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Open Harpoon Quick Menu" })

vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end, { desc = "Navigate to Harpoon #1 File" })
vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end, { desc = "Navigate to Harpoon #2 File" })
vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end, { desc = "Navigate to Harpoon #3 File" })
vim.keymap.set("n", "<C-h>", function() ui.nav_file(4) end, { desc = "Navigate to Harpoon #4 File" })
