require("config.lazy")
require("config.keymaps")
require("config.options")

-- colorscheme
vim.cmd("colorscheme kanagawa")
-- vim.cmd("colorscheme onedark");

-- highligh when yank
vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#9362ff", fg = "#ffffff" })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 300 })
  end,
})
