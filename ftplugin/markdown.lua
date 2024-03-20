vim.o.textwidth = 80

local function setupCharter()
  vim.cmd("only")
  vim.cmd("cd ~/repos/work-files")
  vim.cmd("split Preterms/comments.md")
  vim.cmd("vsplit Preterms/pretermNotes.md")
  vim.cmd("split Preterms/DWDM_Channels.txt")
  vim.cmd("3resize 15")
  vim.cmd("2resize 10")
  vim.cmd("1resize 5")
end

local function setupPNI()
  vim.cmd("only")
  vim.cmd("cd ~/repos/work-files")
  vim.cmd("split AutoCad/notes.md")
  vim.cmd("1resize 10")
end

local function initJob()
  vim.cmd.normal(vim.api.nvim_replace_termcodes("I## <ESC>^eea<CR><ESC>VS`jjo<ESC>j", true, true, true))
end

local function initJobs(count)
  for i = 1, count do
    initJob()
  end
end

local function initMap(count)
  for i = 1, count do
    vim.cmd.normal(vim.api.nvim_replace_termcodes("I### <ESC>^eea<CR><ESC>VS`jjo<ESC>j", true, true, true))
  end
end

vim.api.nvim_create_user_command('Job', 'normal ?##<CR>A - submitted - closed<ESC>', {})
vim.api.nvim_create_user_command('Rename', 'normal IF_<ESC>pa_<ESC>A - *<ESC>', {})
vim.api.nvim_create_user_command('InitJob', function(opts) initJob() end, {})
vim.api.nvim_create_user_command('InitJobs', function(opts) initJobs(opts.fargs[1]) end, { nargs = 1 })
vim.api.nvim_create_user_command('InitMap', function(opts) initMap(opts.fargs[1]) end, { nargs = 1 })
vim.api.nvim_create_user_command('SetupCharter', function() setupCharter() end, {})
vim.api.nvim_create_user_command('SetupPNI', function() setupPNI() end, {})