return {
    {
        "phaazon/hop.nvim",
        vscode = true,
        opts = {},
        config = function()
            local hop = require("hop")
            -- local directions = require("hop.hint").HintDirection

            -- start hop
            hop.setup({ keys = "etovxqpdygfblzhckisuran" })

            vim.keymap.set("n", "s", ":HopWord<cr>", { desc = "HopWord" })

            vim.keymap.set("v", "s", function()
                hop.hint_words({})
            end, { remap = true })

            vim.keymap.set("n", "<leader>gl", ":HopLine<cr>", { desc = "HopLine" })

            vim.cmd([[
                highlight HopNextKey guifg=#FB513F gui=bold
                highlight HopNextKey1 guifg=#10FBD6 gui=bold
                highlight HopNextKey2 guifg=#7AFB11 gui=bold
            ]])

        end,
    },
}
