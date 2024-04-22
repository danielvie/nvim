local bufferline = require('bufferline')
bufferline.setup {
    options = {
        numbers = "ordinal",
        show_buffer_close_icons = true,
        show_close_icon = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        }
    },

    -- highlights = {
    --     fill = {
    --         fg = '#777777',
    --         bg = '#252525',
    --     },
    --     background = {
    --         fg = '#777777',
    --         bg = '#252525',
    --     },
    --     modified = {
    --         fg = '#777777',
    --         bg = '#252525',
    --     },
    --     modified_selected = {
    --         fg = '#ffd787',
    --         bg = '#303030',
    --     },
    --     buffer_selected = {
    --         fg = '#eeeeee',
    --         bg = '#303030',
    --         bold = true,
    --         italic = true,
    --     },
    --     close_button = {
    --         fg = '#777777',
    --         bg = '#252525',
    --     },
    --     tab_close = {
    --         fg = '#777777',
    --         bg = '#252525',
    --     },
    --     tab = {
    --         fg = '#b9b9b9',
    --         bg = '#252525',
    --     },
    --     tab_selected = {
    --         fg = '#368aeb',
    --         bg = '#303030',
    --     },
    --     close_button_selected = {
    --         fg = '#ffffff',
    --         bg = '#252525',
    --     },
    --     separator = {
    --         fg = '#252525',
    --         bg = '#252525',
    --     },
    --     separator_selected = {
    --         fg = '#252525',
    --         bg = '#252525',
    --     },
    --     indicator_selected = {
    --         fg = '#008400',
    --         bg = '#303030',
    --     },
    -- },

}
