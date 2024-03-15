
-- nnoremap <C-w>gd <Cmd>call VSCodeNotify('editor.action.revealDefinitionAside')<CR>


vim.keymap.set("n", '<leader>u', "iaasdfasdfasdfasdfasd<esc>")
-- vim.keymap.set("n", '<leader>w', ":w<cr>")

-- vscode
if vim.g.vscode then
    local function notify(cmd)
        return string.format("<cmd>call VSCodeNotify('%s')<CR>", cmd)
    end
    vim.keymap.set('n', '<leader>w', notify 'workbench.action.files.save', {noremap = false})
    vim.keymap.set('n', '<leader>q', notify 'workbench.action.closeActiveEditor', {noremap = false})
else
    vim.keymap.set("n", '<leader>w', ":w<cr>")
    vim.keymap.set("n", '<leader>q', ":q<cr>")
end

-- personal facilities
vim.keymap.set("n", '<leader>x', ":BufDel<cr>")
vim.keymap.set("n", '<leader>cc', ":bd<cr>")

vim.keymap.set("n", '<leader><leader>x', ":source %<cr>")
vim.keymap.set("n", '<leader><leader>,', ":edit ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", '<leader>s', ":%s//g<left><left>")
vim.keymap.set("n", "<leader>t", 'ggVG')

vim.keymap.set("n", "<a-p>", '"+p')

vim.keymap.set("n", "<leader>v", ':w<cr>:!make<cr>')

vim.keymap.set("v", "y", "ygv<esc>")
vim.keymap.set("v", "<s-y>", '"+y')
vim.keymap.set("n", "<leader><leader>x", ":w<cr>:so<cr>")

-- macros
vim.keymap.set("n", '<s-q>', "@q")
vim.keymap.set("n", '<s-w>', "@w")
vim.keymap.set("n", '<s-e>', "@e")
vim.keymap.set("n", "<s-t>", ":.!sh<cr>")


-- NAVIGATE
vim.keymap.set("n", "<c-h>", "<C-w>h");
vim.keymap.set("n", "<c-l>", "<C-w>l");
vim.keymap.set("n", "<c-j>", "<C-w>j");
vim.keymap.set("n", "<c-k>", "<C-w>k");

vim.keymap.set("n", "<c-q>", "<C-w>x"); -- exchange two windows
vim.keymap.set("n", "<c-e>", "<C-w>r"); -- rotates windows

vim.keymap.set("n", "<a-j>", "<cmd>resize +2<cr>")
vim.keymap.set("n", "<a-k>", "<cmd>resize -2<cr>")
vim.keymap.set("n", "<a-h>", "<cmd>vertical resize -2<cr>")
vim.keymap.set("n", "<a-l>", "<cmd>vertical resize +2<cr>")

vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>sv", "<C-w>v")

vim.keymap.set("n", '<leader><leader>,', ":edit ~/.config/nvim/init.lua<cr>")
vim.keymap.set("n", '<leader>e', vim.diagnostic.open_float)
-- vim.keymap.set("n", '<leader>pv', ":Ex<cr>")
vim.keymap.set("n", '<leader>pv', "<cmd>Neotree<cr>")

local iswindows = vim.loop.os_uname().sysname

if iswindows then
    vim.keymap.set("n", '<leader>ks', ":e $localappdata/nvim/lua/me/keymaps.lua<cr>")
    vim.keymap.set("n", '<leader>kp', ":e $localappdata/nvim/lua/me/plugins.lua<cr>")
    vim.keymap.set("n", '<leader>kl', ":e $localappdata/nvim/lua/me/lsp.lua<cr>")
    vim.keymap.set("n", '<leader>ki', ":e $localappdata/nvim/init.lua<cr>")
    vim.keymap.set("n", '<leader>no', ":e C:/Users/dvieira/desktop/notes.md<cr>")
else
    vim.keymap.set("n", '<leader>ks', ":e ~/.config/nvim/lua/me/keymaps.lua<cr>")
    vim.keymap.set("n", '<leader>kp', ":e ~/.config/nvim/lua/me/plugins.lua<cr>")
    vim.keymap.set("n", '<leader>kl', ":e ~/.config/nvim/lua/me/lsp.lua<cr>")
end


-- goto to end/begin of line
vim.keymap.set("n", "gl", "$")
vim.keymap.set("n", "gh", "^")

-- operator to start and end of line
vim.keymap.set("o", '<s-l>', "$")
vim.keymap.set("o", '<s-h>', "^")

-- move lines in visual mode
vim.keymap.set("v", 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set("v", 'K', ":m '<-2<CR>gv=gv")

-- set root folder
-- vim.keymap.set("n", '<leader><leader>r', ':cd %:p:h<cr>')
vim.keymap.set("n", '<leader>0', ':cd %:p:h<cr>')

-- alpha (init menu)
vim.keymap.set("n", '<leader><leader><esc>', '<cmd>Alpha<cr>')

-- Telescope
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
-- vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
-- vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep sorting_strategy=ascending<CR>")
-- vim.keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>")
-- vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>")
-- 
-- vim.keymap.set("n", "L", "<cmd>bnext<cr>")
-- vim.keymap.set("n", "H", "<cmd>bprevious<cr>")
-- vim.keymap.set("n", "F", "<cmd>HopPattern<cr>")


-- copilot
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<s-u>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
