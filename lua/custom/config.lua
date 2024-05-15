-- no wrap
vim.opt.wrap = false

-- tab
vim.opt.tabstop = 2

-- numbers
vim.opt.rnu = true

-- add cfilter
vim.cmd 'packadd cfilter'

require 'custom.config_fold'
