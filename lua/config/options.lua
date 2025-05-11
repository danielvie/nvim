-- tab and spaces
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- amount to indent with <<and>>
vim.opt.tabstop = 4 -- how many space are shown per tab
vim.opt.softtabstop = 4 -- how many space are applied when pressing tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- keep identation from previous line

-- enable break indent
vim.opt.breakindent = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- use clipboard register
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- spell
vim.opt_global.spell = true
vim.opt_global.spelllang = "en_us"

-- show line under cursor
vim.opt.cursorline = true

-- stores undos between sessions
vim.opt.undofile = true

-- enable mouse mode
vim.opt.mouse = "a"

-- matching brackets
vim.cmd([[
  highlight MatchParen guibg=#4c4c4c guifg=NONE
]])

-- add cfilter
vim.cmd("packadd cfilter")

-- nerd font
vim.g.have_nerd_font = true

-- fold
vim.opt.foldcolumn = "1"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- sets how neovim will display whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = " ", trail = ".", nbsp = "󱁐" }

-- highligh when yank
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#9362ff", fg = "#ffffff" })
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 300 })
    end,
})
