return {
    "inkarkat/vim-ReplaceWithRegister",
    init = function()
        -- Prevent default gr mappings
        vim.g.ReplaceWithRegister_no_mappings = 1
    end,

    config = function()
        -- Define custom mappings
        vim.keymap.set("n", "<localleader>gr", "<Plug>ReplaceWithRegisterOperator", { noremap = true })
        vim.keymap.set("v", "<localleader>gr", "<Plug>ReplaceWithRegisterVisual", { noremap = true })
    end,
}
