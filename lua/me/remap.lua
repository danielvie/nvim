
local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end
treesitter.setup {
	ensure_installed = "all",
	highlight = { enable = true, additional_vim_regex_highlighting = { "latex" } }
}

-- keymaps
-- vim.keymap.set("n", "<leader>p", "<cmd>Glow<cr>")

vim.keymap.set('n', "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set('n', "<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set('n', "<leader>fw", "<cmd>Telescope live_grep sorting_strategy=ascending<CR>")
vim.keymap.set('n', "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>")
vim.keymap.set('n', "<leader>dl", "<cmd>Telescope diagnostics<cr>")


vim.keymap.set('n', "L", "<cmd>bnext<cr>")
vim.keymap.set('n', "H", "<cmd>bprevious<cr>")
vim.keymap.set('n', "F", "<cmd>HopPattern<cr>")

-- festivities
vim.keymap.set('n', "<leader>;", "<cmd>lua require('duck').hatch('🦖', 1)<cr>")
vim.keymap.set('n', "<leader>'", "<cmd>lua require('duck').cook()<cr>")

-- personal facilities
vim.keymap.set('n', '<leader>w', ":w<cr>")
vim.keymap.set('n', '<leader>q', ":q<cr>")
vim.keymap.set('n', '<leader>x', ":bd<cr>")
vim.keymap.set('n', '<leader><leader>s', ":so<cr>")
vim.keymap.set('n', '<leader><leader>,', ":edit ~/.config/nvim/init.lua<cr>")

-- move lines in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<leader><leader>,', ":edit ~/.config/nvim/init.lua<cr>")

vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)

vim.keymap.set('n', '<leader>pv', ":Ex<cr>")

vim.keymap.set('o', 'L', "$")
vim.keymap.set('o', 'H', "^")

-- rooter, set root folder
vim.keymap.set('n', '<leader>ro', '<cmd>Rooter<cr>')

-- alpha (init menu)
vim.keymap.set('n', '<leader><esc>', '<cmd>Alpha<cr>')

