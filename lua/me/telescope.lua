-- You dont need to set any of these options. These are the default ones. Only
-- the loading is important
require('telescope').setup {
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

-- Telescope keymaps
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep sorting_strategy=ascending<CR>")
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
vim.keymap.set("n", "<C-f>", "<cmd>Telescope current_buffer_fuzzy_find sorting_strategy=ascending prompt_position=top<CR>")

vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>")
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>")

vim.keymap.set("n", "<leader>ft", "<cmd>Telescope resume <cr><esc>")

vim.keymap.set("n", "L", "<cmd>bnext<cr>")
vim.keymap.set("n", "H", "<cmd>bprevious<cr>")
