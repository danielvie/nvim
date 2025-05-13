-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- facilities
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" })
vim.keymap.set("n", "<a-x>", "<cmd>bd<cr>", { desc = "Delete Buffer" })
vim.keymap.set("n", "<leader>0", "<cmd>cd %:p:h<cr>", { desc = "Set Root Folder" })
vim.keymap.set("n", "<a-t>", "ggVG", { desc = "select [A]ll" })
vim.keymap.set("n", "<s-r>", "za", { desc = "Toggle Fold" })

-- macros
vim.keymap.set("n", "<s-q>", "@q", { desc = "run macro @q" })
vim.keymap.set("n", "<s-w>", "@w", { desc = "run macro @w" })
vim.keymap.set("n", "<s-e>", "@e", { desc = "run macro @e" })

-- run commands
local terminal_command = "powershell"
vim.keymap.set("n", "<s-t>", "<cmd>.!" .. terminal_command .. "<cr>", { desc = "run line as cmd" })
vim.keymap.set("v", "<s-t>", ":'<,'>!" .. terminal_command .. "<cr>", { desc = "run line as cmd" })

-- operators
vim.keymap.set("o", "<s-l>", "$", { desc = "operators to end of line" })
vim.keymap.set("o", "<s-h>", "^", { desc = "operators to begining of line" })

-- move lines in visual mode
vim.keymap.set("v", "<s-j>", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
vim.keymap.set("v", "<s-k>", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- oil
vim.keymap.set("n", "-", "<cmd>Oil --float<cr>", { desc = "Open file explorer in Oil" })

-- neotree
vim.keymap.del("n", "<leader>fe")
vim.keymap.set("n", "<localleader>fe", function()
    Snacks.explorer({ cwd = LazyVim.root() })
end, { desc = "Explorer" })

-- neorg
vim.keymap.set("n", "<leader>no", "<cmd>Neorg index<cr>", { desc = "Open Neorg" })

-- diagnostics
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open Diagnostics" })
