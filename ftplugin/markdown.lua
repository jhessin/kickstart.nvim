vim.o.textwidth = 80

local function setup()
  vim.cmd("cd ~/Documents/work-files")
  vim.cmd("split Preterms/comments.txt")
  vim.cmd("vsplit Preterms/pretermNotes.md")
  vim.cmd("split Preterms/DWDM_Channels.txt")
  vim.cmd("3resize 15")
  vim.cmd("2resize 10")
  vim.cmd("1resize 5")
end

local function setupAutoCad()
  vim.cmd("cd ~/Documents/work-files")
  vim.cmd("split AutoCad/notes.md")
end

local function measure()
  vim.cmd("write")
  vim.cmd("!bc C:/Users/jhessin/Documents/MapsToWork/show_footage.bc")
end

local function initJob(count)
  for i = 1, count do
    vim.cmd.normal(vim.api.nvim_replace_termcodes("I## <ESC>^eea<CR><ESC>VS`jjo<ESC>j", true, true, true))
  end
end

local function initMap(count)
  for i = 1, count do
    vim.cmd.normal(vim.api.nvim_replace_termcodes("I### <ESC>^eea<CR><ESC>VS`jjo<ESC>j", true, true, true))
  end
end

vim.api.nvim_create_user_command('Job', 'normal ?##<CR>A - submitted - closed<ESC>', {})
vim.api.nvim_create_user_command('Rename', 'normal IF_<ESC>pa_<ESC>A - *<ESC>', {})
vim.api.nvim_create_user_command('InitJob', function(opts) initJob(opts.fargs[1]) end, { nargs = 1 })
vim.api.nvim_create_user_command('InitMap', function(opts) initMap(opts.fargs[1]) end, { nargs = 1 })
vim.api.nvim_create_user_command('Setup', function() setup() end, {})
vim.api.nvim_create_user_command('SetupAutoCad', function() setupAutoCad() end, {})
vim.api.nvim_create_user_command('Measure', function() measure() end, {})