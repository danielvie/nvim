-- Emoji and Gitmoji via fzf-lua
--https://github.com/mistweaverco/fzf-symbols.nvim
return {
    "mistweaverco/fzf-symbols.nvim",
    dependencies = {
        "ibhagwan/fzf-lua",
    },
    config = function()
        vim.keymap.set("i", "<C-e>", function()
            require("fzf-symbols").open()
        end)
    end,
}
