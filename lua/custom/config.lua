-- no wrap
vim.opt.wrap = false

-- tab
vim.opt.tabstop = 2

-- numbers
vim.opt.rnu = true

-- spell
vim.opt_global.spell = true
vim.opt_global.spelllang = 'en_us'

-- add cfilter
vim.cmd 'packadd cfilter'

require 'custom.config_fold'
