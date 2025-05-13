return {
    "mbbill/undotree",
    opts = {},
    config = function()
        vim.keymap.set("n", "<localleader>u", "<cmd>UndotreeToggle<cr>", { desc = "Toggle Undotree" })
    end,
}
