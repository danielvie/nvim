-- facilities
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save' })
vim.keymap.set('n', '<a-q>', '<cmd>wa<cr><cmd>q<cr>', { desc = 'Quit Force' })
vim.keymap.set('n', '<a-w>', '<cmd>q<cr>', { desc = 'Quit' })
vim.keymap.set('n', '<a-x>', '<cmd>bd<cr>', { desc = 'Delete Buffer' })
vim.keymap.set('n', '<leader>pv', '<cmd>Ex<cr>', { desc = 'Open FileExplorer' })
vim.keymap.set('n', '<leader>0', '<cmd>cd %:p:h<cr>', { desc = 'Set Root Folder' })
vim.keymap.set('n', '<leader>v', '<cmd>!make<cr>', { desc = 'Run !make' })
vim.keymap.set('n', '<s-h>', '<cmd>bp<cr>', { desc = 'Prev Buffer' })
vim.keymap.set('n', '<s-l>', '<cmd>bn<cr>', { desc = 'Next Buffer' })

vim.keymap.set('n', '<leader><leader>x', '<cmd>w<cr>:source %<cr>')

vim.keymap.set('n', '<leader>no', '<cmd>e $userprofile/Documents/notes<cr>', { desc = 'Open Notes' })
vim.keymap.set('n', '<s-r>', 'za', { desc = 'Toggle Fold' })
vim.keymap.set('n', '<leader><leader>t', 'ggVG', { desc = 'Select All' })

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

-- commands
local uname = vim.loop.os_uname()
local iswindows = uname.sysname == 'Windows_NT'
local teminal_command = 'sh'
if iswindows then
  teminal_command = 'cmd'
end

vim.keymap.set('n', '<s-t>', '<cmd>.!' .. teminal_command .. '<cr>', { desc = 'run line as cmd' })
vim.keymap.set('v', '<s-t>', ":'<,'>!" .. teminal_command .. '<cr>', { desc = 'run line as cmd' })

-- operators
vim.keymap.set('o', '<s-l>', '$', { desc = 'operators to end of line' })
vim.keymap.set('o', '<s-h>', '^', { desc = 'operators to begining of line' })

-- move lines in visual mode
vim.keymap.set('v', '<s-j>', ":m '>+1<CR>gv=gv", { desc = 'Move Line Down' })
vim.keymap.set('v', '<s-k>', ":m '<-2<CR>gv=gv", { desc = 'Move Line Up' })

-- navigate
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set('n', '<a-k>', '<cmd>resize -2<cr>', { desc = 'Resize Window -' })
vim.keymap.set('n', '<a-j>', '<cmd>resize +2<cr>', { desc = 'Resize Window +' })
vim.keymap.set('n', '<a-h>', '<cmd>vertical resize -2<cr>', { desc = 'Resize Window Vertical -' })
vim.keymap.set('n', '<a-l>', '<cmd>vertical resize +2<cr>', { desc = 'Resize Window Vertical +' })

-- replace register
vim.keymap.set('n', 'rriw', 'ciw<c-r>0<esc>', { desc = 'Replace Word With Register' })
vim.keymap.set('v', 'rr', 'c<c-r>0<esc>', { desc = 'Replace Word With Register (Visual)' })

-- visits
local map_vis = function(keys, call, desc)
  local rhs = '<Cmd>lua MiniVisits.' .. call .. '<CR>'
  vim.keymap.set('n', '<Leader>' .. keys, rhs, { desc = desc })
end

map_vis('vv', 'add_label("core")', 'Add to core')
map_vis('vV', 'remove_label("core")', 'Remove to core')
map_vis('vc', 'select_path("", { filter = "core"})', 'Select core (all)')
map_vis('vC', 'select_path(nil, { filter = "core"})', 'Select core (cwd)')

-- Iterate based on recency
local map_iterate_core = function(lhs, direction, desc)
  local opts = { filter = 'core', sort = sort_latest, wrap = true }
  local rhs = function()
    MiniVisits.iterate_paths(direction, vim.fn.getcwd(), opts)
  end
  vim.keymap.set('n', lhs, rhs, { desc = 'MiniVisits: ' .. desc })
end

map_iterate_core('[{', 'last', 'Core label (earliest)')
map_iterate_core('[[', 'forward', 'Core label (earlier)')
map_iterate_core(']]', 'backward', 'Core label (later)')
map_iterate_core(']}', 'first', 'Core label (latest)')
