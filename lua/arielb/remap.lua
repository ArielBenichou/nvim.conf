vim.g.mapleader = " "
vim.keymap.set("n", "<leader>vp", vim.cmd.Ex, { desc = "[V]iew [P]roject Tree" })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down one line" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up one line" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Pull next line on same line" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Go half a page [D]own and recenter view" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Go half a page [U]p and recenter view" })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- yank to clipboard
vim.keymap.set("n", "<leader>p", "\"*p", { desc = "[P]aste Selection to System Clipboard" })
vim.keymap.set("v", "<leader>y", "\"*y", { desc = "[Y]ank Selection to System Clipboard" })
-- -- greatest remap ever
-- vim.keymap.set("x", "<leader>p", [["_dP]])
--
-- -- next greatest remap ever : asbjornHaland
-- vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
--
-- vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Open TMUX-Sessionizer" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "[F]ormat Document" })

-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc="Make current file e[X]ecutable" })
