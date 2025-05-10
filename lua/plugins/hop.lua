return {
    {
        'phaazon/hop.nvim',
        opts = {},
        config = function()
            local hop = require 'hop'
            local directions = require('hop.hint').HintDirection

            -- start hop
            hop.setup { keys = 'etovxqpdygfblzhckisuran' }

            vim.keymap.set('n', 's', ':HopWord<cr>', { desc = 'HopWord' })

            vim.keymap.set('v', 's', function()
                hop.hint_words {}
            end, { remap = true })

            vim.keymap.set('n', '<leader>gl', ':HopLine<cr>', { desc = 'HopLine' })
        end,
    },
}
