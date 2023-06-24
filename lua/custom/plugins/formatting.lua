-- These are certain plugins that are useful for formatting and linting
vim.o.textwidth = 79

vim.o.cc = "+1"
return {
  -- use for formatting
  'mhartington/formatter.nvim',
  -- use for dap
  'mfussenegger/nvim-dap',
  -- use for linting
  'mfussenegger/nvim-lint',
}