local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


require('me.globals')

require("lazy").setup("me.plugins")

require('me.options')
require('me.keymaps')

-- require('me.lualine')
--
require('me.catppuccin')

require('me.telescope')

require('me.treesitter')

require('me.lsp')
require('me.harpoon')

require('me.fugitive')
require('me.colorhighlight')

require('me.gitsigns')
require('me.feline')
require('me.bufferline')
