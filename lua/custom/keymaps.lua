-- facilities
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save' })
vim.keymap.set('n', '<a-w>', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>x', '<cmd>bd<cr>', { desc = 'Close Buffer' })
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<cr>', { desc = 'Open FileExplorer' })
vim.keymap.set('n', '<leader>0', '<cmd>cd %:p:h<cr>', { desc = 'Set Root Folder' })
vim.keymap.set('n', '<leader>v', '<cmd>!make<cr>', { desc = 'Run !make' })
vim.keymap.set('n', '<s-h>', '<cmd>bp<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<s-l>', '<cmd>bn<cr>', { desc = 'Next Buffer' })

vim.keymap.set('n', '<leader>no', '<cmd>e $userprofile/desktop/notes.md<cr>', { desc = 'Open Notes' })
vim.keymap.set('n', '<s-r>', 'za', { desc = 'Toggle Fold' })
vim.keymap.set('n', '<leader>t', 'ggVG', { desc = 'Select All' })

-- quickfix list
vim.keymap.set('n', '<a-y>', '<cmd>cfirst<cr>', { desc = 'first quickfix item' })
vim.keymap.set('n', '<a-o>', '<cmd>clast<cr>', { desc = 'last quickfix item' })
vim.keymap.set('n', '<a-u>', '<cmd>cprev<cr>', { desc = 'prev quickfix item' })
vim.keymap.set('n', '<a-i>', '<cmd>cnext<cr>', { desc = 'next quickfix item' })
vim.keymap.set('n', '<a-m>', '<cmd>cprev<cr>', { desc = 'prev quickfix item' })
vim.keymap.set('n', '<a-,>', '<cmd>cnext<cr>', { desc = 'next quickfix item' })

vim.keymap.set('n', '<leader>ks', '<cmd>e $localappdata/nvim/lua/custom/keymaps.lua<cr>', { desc = 'goto `Keymaps.lua`' })

-- macros
vim.keymap.set('n', '<s-q>', '@q', { desc = 'run macro @q' })
vim.keymap.set('n', '<s-w>', '@w', { desc = 'run macro @w' })
vim.keymap.set('n', '<s-e>', '@w', { desc = 'run macro @e' })

vim.keymap.set('n', '<s-t>', '<cmd>.!cmd<cr>', { desc = 'run line as cmd' })
vim.keymap.set('v', '<s-t>', ":'<,'>!cmd<cr>", { desc = 'run line as cmd' })

-- operators
vim.keymap.set('o', '<s-l>', '$', { desc = 'operators to end of line' })
vim.keymap.set('o', '<s-h>', '^', { desc = 'operators to begining of line' })

-- move lines in visual mode
vim.keymap.set('v', '<s-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Line Down' })
vim.keymap.set('v', '<s-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Line Up' })

-- navigate
vim.keymap.set('n', '<a-k>', '<cmd>resize -2<cr>', { desc = 'Resize Window -' })
vim.keymap.set('n', '<a-j>', '<cmd>resize +2<cr>', { desc = 'Resize Window +' })
vim.keymap.set('n', '<a-h>', '<cmd>vertical resize -2<cr>', { desc = 'Resize Window Vertical -' })
vim.keymap.set('n', '<a-l>', '<cmd>vertical resize +2<cr>', { desc = 'Resize Window Vertical +' })

-- replace register
vim.keymap.set('n', 'rriw', 'ciw<c-r>0<esc>', { desc = 'Replace Word With Register' })
vim.keymap.set('v', 'rr', 'c<c-r>0<esc>', { desc = 'Replace Word With Register (Visual)' })
