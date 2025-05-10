return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {
        indent = {
            char = {"│"},
            tab_char = { 'a' },
        },
        scope = {
            enabled = true,
            highlight = {"Function", "Label"}
        }
    },
}
