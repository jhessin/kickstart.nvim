vim.o.textwidth = 80

-- local function close()
--   vim.cmd("echo 'It Works!'")
-- --   This isn't working for some reason
--   vim.cmd("normal ?##<CR>A - submitted - closed<ESC>")
-- end

vim.api.nvim_create_user_command('Job', 'normal ?##<CR>A - submitted - closed<ESC>', {})
vim.api.nvim_create_user_command('Rename', 'normal IF_<ESC>pa_<ESC>A - *<ESC>', {})
vim.api.nvim_create_user_command('InitJob', 'normal I## <ESC>^eea<CR><ESC>VS`jjo<ESC>', {})
-- vim.api.nvim_create_user_command('JD', function()
--   vim.cmd("normal ?##<CR>A - submitted - closed<ESC>")
-- end, {})