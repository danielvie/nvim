-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- facilities
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", "<a-q>", "<cmd>wa<cr><cmd>q<cr>", { desc = "Quit Force" })
vim.keymap.set("n", "<a-w>", "<cmd>q<cr>", { desc = "Quit" })
vim.keymap.set("n", "<a-x>", "<cmd>bd<cr>", { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>0", "<cmd>cd %:p:h<cr>", { desc = "Set Root Folder" })
vim.keymap.set("n", "<leader>v", "<cmd>!make<cr>", { desc = "Run !make" })
-- vim.keymap.set("n", "<s-h>", "<cmd>bp<cr>", { desc = "Prev Buffer" })
-- vim.keymap.set("n", "<s-l>", "<cmd>bn<cr>", { desc = "Next Buffer" })
vim.keymap.set("n", "<leader>no", "<cmd>e $userprofile/Documents/notes<cr>", { desc = "Open Notes" })
vim.keymap.set("n", "<s-r>", "za", { desc = "Toggle Fold" })
vim.keymap.set("n", "<leader>t", "ggVG", { desc = "Select All" })

-- macros
vim.keymap.set("n", "<s-q>", "@q", { desc = "run macro @q" })
vim.keymap.set("n", "<s-w>", "@w", { desc = "run macro @w" })
vim.keymap.set("n", "<s-e>", "@w", { desc = "run macro @e" })

-- commands
local uname = vim.loop.os_uname()
local iswindows = uname.sysname == "Windows_NT"
local teminal_command = "sh"
if iswindows then
  teminal_command = "cmd"
end

vim.keymap.set("n", "<s-t>", "<cmd>.!" .. teminal_command .. "<cr>", { desc = "run line as cmd" })
vim.keymap.set("v", "<s-t>", ":'<,'>!" .. teminal_command .. "<cr>", { desc = "run line as cmd" })

-- operators
vim.keymap.set("o", "<s-l>", "$", { desc = "operators to end of line" })
vim.keymap.set("o", "<s-h>", "^", { desc = "operators to begining of line" })

-- move lines in visual mode
vim.keymap.set("v", "<s-j>", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
vim.keymap.set("v", "<s-k>", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

vim.keymap.set("n", "gr", "<Plug>ReplaceWithRegister", { desc = "ReplaceWithRegister" })
