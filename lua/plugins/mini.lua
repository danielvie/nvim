return { -- Collection of various small independent plugins/modules
    "echasnovski/mini.nvim",
    config = function()
        -- Extend and create a/i textobjects
        require("mini.ai").setup({ n_lines = 500 })

        -- Autopairs
        require("mini.pairs").setup()

        -- Tabline
        require("mini.tabline").setup()

        -- Go forward/backward with square brackets
        require("mini.bracketed").setup()

        -- Statusline
        local statusline = require("mini.statusline")
        statusline.setup({ use_icons = vim.g.have_nerd_font })
        ---@diagnostic disable-next-line: duplicate-set-field
        statusline.section_location = function()
            return "%2l:%-2v"
        end
    end,
}
