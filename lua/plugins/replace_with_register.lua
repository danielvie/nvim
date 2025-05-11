return {
    "inkarkat/vim-ReplaceWithRegister",
    init = function()
        -- Prevent default gr mappings
        vim.g.ReplaceWithRegister_no_mappings = 1
    end,

    config = function()
        -- Define custom mappings
        vim.keymap.set("n", "<leader>r", "<Plug>ReplaceWithRegisterOperator", { noremap = true })
        vim.keymap.set("v", "<leader>r", "<Plug>ReplaceWithRegisterVisual", { noremap = true })
        vim.keymap.set("n", "<leader>rr", "<Plug>ReplaceWithRegisterLine", { noremap = true })
    end,
}
