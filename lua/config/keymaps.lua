-- facilities
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", {desc = "Save"})
vim.keymap.set("n", "<a-x>", "<cmd>bd<cr>", {desc = "Delete Buffer"})
vim.keymap.set("n", "<leader>0", "<cmd>cd %:p:h<cr>", {desc = "Set Root Folder"})

vim.keymap.set("n", "<esc>", "<cmd>nohlsearch<cr>", {desc = "Clear search highlight"})


vim.keymap.set("n", "<s-h>", "<cmd>bp<cr>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<s-l>", "<cmd>bn<cr>", { desc = "Next Buffer" })

vim.keymap.set("n", "<leader><leader>t", "ggVG", { desc = "select [A]ll" })

vim.keymap.set("n", "<leader><leader>x", "<cmd>:source %<cr>", {desc = "Source file"})
vim.keymap.set("n", "<s-r>", "za", { desc = "Toggle Fold" })

-- macros
vim.keymap.set("n", "<s-q>", "@q", { desc = "run macro @q" })
vim.keymap.set("n", "<s-w>", "@w", { desc = "run macro @w" })
vim.keymap.set("n", "<s-e>", "@e", { desc = "run macro @e" })

-- run commands
local terminal_command = "powershell"
vim.keymap.set("n", "<s-t>", "<cmd>.!" .. terminal_command .. "<cr>", { desc = "run line as cmd" })
vim.keymap.set("v", "<s-t>", ":'<,'>!" .. terminal_command .. "<cr>", { desc = "run line as cmd" })

-- oil
vim.keymap.set("n", "-", "<cmd>Oil --float<cr>", {desc = "Open file explorer in Oil"})

-- operators
vim.keymap.set("o", "<s-l>", "$", { desc = "operators to end of line" })
vim.keymap.set("o", "<s-h>", "^", { desc = "operators to begining of line" })

-- move lines in visual mode
vim.keymap.set("v", "<s-j>", ":m '>+1<CR>gv=gv", { desc = "Move Line Down" })
vim.keymap.set("v", "<s-k>", ":m '<-2<CR>gv=gv", { desc = "Move Line Up" })

-- navigate
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

vim.keymap.set("n", "<a-k>", "<cmd>resize -2<cr>", { desc = "Resize Window -" })
vim.keymap.set("n", "<a-j>", "<cmd>resize +2<cr>", { desc = "Resize Window +" })
vim.keymap.set("n", "<a-h>", "<cmd>vertical resize -2<cr>", { desc = "Resize Window Vertical -" })
vim.keymap.set("n", "<a-l>", "<cmd>vertical resize +2<cr>", { desc = "Resize Window Vertical +" })

-- goto
vim.keymap.set("n", "<leader>no", "<cmd>Neorg index<cr>", { desc = "GoTo Neorg Index" })

-- terminal
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
