-- no wrap
vim.opt.wrap = false

-- tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- numbers
vim.opt.rnu = true

-- spell
vim.opt_global.spell = true
vim.opt_global.spelllang = 'en_us'

-- add cfilter
vim.cmd 'packadd cfilter'

--
vim.g.have_nerd_font = false

require 'custom.config_fold'
require 'custom.keymaps'
require 'custom.globals'
