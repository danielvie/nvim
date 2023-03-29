vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>w', ":w<cr>")
vim.keymap.set('n', '<leader>q', ":q<cr>")
vim.keymap.set('n', '<leader><leader>d', ":bd<cr>")
vim.keymap.set('n', '<leader><leader>s', ":so<cr>")

vim.keymap.set('n', '<leader>pv', ":Ex<cr>")

vim.keymap.set('o', 'L', "$")
vim.keymap.set('o', 'H', "^")
