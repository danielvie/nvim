-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- set mapleader
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- tab and spaces
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- amount to indent with <<and>>
vim.opt.tabstop = 4 -- how many space are shown per tab
vim.opt.softtabstop = 4 -- how many space are applied when pressing tab

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- signcolumn
vim.opt.signcolumn = "yes"

--
vim.g.lazyvim_picker = "fzf"
