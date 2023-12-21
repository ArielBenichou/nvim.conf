-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("RsyncOnSave", { clear = true }),
  callback = function()
    -- Check if the current file is from the ~/work/networx-code/ folder
    local current_file = vim.fn.expand("%:p")
    local networx_code_folder = vim.fn.expand("~") .. "/work/networx-code/"
    if vim.fn.match(current_file, networx_code_folder) == -1 then
      -- The current file is not from the specified folder, so do nothing
      return
    end

    print("Sync Started")

    -- Start the rsync job
    local rsync_command = { "sh", vim.fn.expand("~") .. "/work/scripts/rsync_networx.sh" }
    local job_opts = {
      on_exit = function(job_id, exit_code, event_type)
        if event_type == "exit" and exit_code == 0 then
          -- The rsync job completed successfully
          print("Synced Done")
        else
          -- The rsync job encountered an error
          print("Synced Failed")
        end
      end,
      stdout_buffered = true,
    }
    vim.fn.jobstart(rsync_command, job_opts)
  end,
})
