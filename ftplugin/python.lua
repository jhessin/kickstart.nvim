function py()
  vim.cmd("sp term://ipython")
end

vim.b.vimpipe_command = 'python -'
vim.o.foldmethod = 'indent'

vim.api.nvim_create_user_command('Py', function(opts) py() end, {})