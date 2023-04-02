local keymap = function(tbl)
	local opts = { noremap = true, silent = true }
	local mode = tbl['mode']
	tbl['mode'] = nil
	local bufnr = tbl['bufnr']
	tbl['bufnr'] = nil

	for k, v in pairs(tbl) do
		if tonumber(k) == nil then
			opts[k] = v
		end
	end

	if bufnr ~= nil then
		vim.api.nvim_buf_set_keymap(bufnr, mode, tbl[1], tbl[2], opts)
	else
		vim.api.nvim_set_keymap(mode, tbl[1], tbl[2], opts)
	end
end

nmap = function(tbl)
	tbl['mode'] = 'n'
	keymap(tbl)
end

imap = function(tbl)
	tbl['mode'] = 'i'
	keymap(tbl)
end


local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end
treesitter.setup { ensure_installed = "all", highlight = { enable = true } }

-- keymaps
vim.keymap.set("n", "<leader>p", "<cmd>Glow<cr>")


nmap { "<leader>sf", "<cmd>Telescope find_files<CR>" }
nmap { "<leader>sg", "<cmd>Telescope live_grep<CR>" }
nmap { "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>" }
nmap { "<leader>lg", "<cmd>Telescope live_grep<CR>" }
nmap { "<leader>dl", "<cmd>Telescope diagnostics<cr>" }

-- navigation
nmap { "L", "<cmd>bnext<cr>" }
nmap { "H", "<cmd>bprevious<cr>" }
nmap { "F", "<cmd>HopPattern<cr>" }

-- festivities
nmap { "<leader>;", "<cmd>lua require('duck').hatch('🎅', 1)<cr>" }
nmap { "<leader>'", "<cmd>lua require('duck').cook()<cr>" }


vim.keymap.set('n', '<leader>w', ":w<cr>")
vim.keymap.set('n', '<leader>q', ":q<cr>")
vim.keymap.set('n', '<leader>c', ":bd<cr>")
vim.keymap.set('n', '<leader><leader>s', ":so<cr>")

vim.keymap.set('n', '<leader>pv', ":Ex<cr>")

vim.keymap.set('o', 'L', "$")
vim.keymap.set('o', 'H', "^")
