local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = "Search in Git Files" })

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', builtin.keymaps, { desc = '[?] Open Keymaps' })

vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', function()
    builtin.grep_string({ desc = '[S]earch current [W]ord', search = vim.fn.input("Grep > ") })
end, { desc = "[S]earch current [W]ord" })

vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
