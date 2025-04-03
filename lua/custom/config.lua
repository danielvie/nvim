-- no wrap
-- vim.opt.wrap = true

-- tab
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- numbers
vim.opt.rnu = true

-- spell
vim.opt_global.spell = true
vim.opt_global.spelllang = "en_us"

-- matching brackets
vim.cmd [[
  highlight MatchParen guibg=#4c4c4c guifg=NONE
]]

-- add cfilter
vim.cmd("packadd cfilter")

--
vim.g.have_nerd_font = false

require("custom.config_fold")
require("custom.keymaps")
require("custom.globals")

function GitLogToRegister()
  local commit_hash = vim.fn.getreg("+")
  local git_command = "git log --format='%an' -n 1 " .. commit_hash
  local result = vim.fn.system(git_command)
  vim.fn.setreg("+", result)
end

vim.cmd [[command! GitWho lua GitLogToRegister()]]
