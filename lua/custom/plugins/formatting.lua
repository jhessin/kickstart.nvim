-- These are certain plugins that are useful for formatting and linting
vim.o.textwidth = 79
return {
  -- use for formatting
  'mhartington/formatter.nvim',
  -- use for dap
  'mfussenegger/nvim-dap',
  -- use for linting
  'mfussenegger/nvim-lint',
}