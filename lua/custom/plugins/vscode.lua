local function openFile(file)
  if vim.g.vscode then
    vim.call('VSCodeExtensionNotify', {
      'open-file',
      file })
  else
    vim.cmd.edit(file)
  end
end

vim.keymap.set('n', '<leader>ev', function()
  openFile(vim.fn.expand('$MYVIMRC'))
end)

-- VSCode specific bindings {{{
if vim.g.vscode then
  vim.keymap.set('n', 'zM', function()
    vim.call('VSCodeNotify', 'editor.foldAll')
  end)
  vim.keymap.set('n', 'zR', function()
    vim.call('VSCodeNotify', 'editor.unfoldAll')
  end)
  vim.keymap.set('n', 'zc', function()
    vim.call('VSCodeNotify', 'editor.fold')
  end)
  vim.keymap.set('n', 'zC', function()
    vim.call('VSCodeNotify', 'editor.foldRecursively')
  end)
  vim.keymap.set('n', 'zo', function()
    vim.call('VSCodeNotify', 'editor.unfold')
  end)
  vim.keymap.set('n', 'zO', function()
    vim.call('VSCodeNotify', 'editor.unfoldRecursively')
  end)
  vim.keymap.set('n', 'za', function()
    vim.call('VSCodeNotify', 'editor.toggleFold')
  end)
  vim.keymap.set('', 'j', function()
    vim.call('VSCodeNotify', 'cursorDown')
  end)
  vim.keymap.set('', 'k', function()
    vim.call('VSCodeNotify', 'cursorUp')
  end)
end
-- }}}

return {}