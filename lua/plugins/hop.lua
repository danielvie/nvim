return {
    {
        "phaazon/hop.nvim",
        opts = {},
        config = function()
            local hop = require("hop")
            local directions = require("hop.hint").HintDirection

            -- start hop
            hop.setup({ keys = "etovxqpdygfblzhckisuran" })

            vim.keymap.set("n", "s", ":HopWord<cr>", { desc = "HopWord" })

            vim.keymap.set("v", "s", function()
                hop.hint_words({})
            end, { remap = true })

            vim.keymap.set("n", "<leader>gl", ":HopLine<cr>", { desc = "HopLine" })

            -- -- vim.keymap.set("n", "f", function()
            -- --   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
            -- -- end, { remap = true })
            -- -- vim.keymap.set("v", "f", function()
            --   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
            -- end, { remap = true })
            -- vim.keymap.set("", "F", function()
            -- --   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
            -- -- end, { remap = true })
            -- -- vim.keymap.set("", "t", function()
            -- --   hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
            -- -- end, { remap = true })
            -- -- vim.keymap.set("", "T", function()
            -- --   hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
            -- -- end, { remap = true })
        end,
    },
}
