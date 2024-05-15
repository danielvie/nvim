-- no wrap
vim.opt.wrap = false

-- numbers
vim.opt.rnu = true

-- add cfilter
vim.cmd 'packadd cfilter'

-- fold expression
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldenable = true

vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
