return {
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<localleader>u", vim.cmd.UndotreeToggle)
        end,
    },
}
