vim.o.foldmethod = "indent"
-- t is broken
vim.opt.formatoptions:append({ c = true, q = true, j = true,["]"] = true, r = false, o = false })
vim.o.textwidth = 79