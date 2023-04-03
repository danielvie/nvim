
local rooter = require('nvim-rooter')
rooter.setup({
        print("=== rooter ==="),
        enable = true,
        rooter_patterns = { '.git', 'tese.tex' },
        update_cwd = true,
})
