return {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    -- dependencies = { "nvim-tree/nvim-web-devicons" },
    -- or if using mini.icons/mini.nvim
    dependencies = { "echasnovski/mini.icons" },
    opts = {},
    keys = {
        {
            "<leader>sf",
            function()
                require("fzf-lua").files()
            end,
            desc = "[S]earch [F]iles in project directory",
        },
        {
            "<leader>sg",
            function()
                require("fzf-lua").live_grep()
            end,
            desc = "[S]earch files by [G]rep project directory",
        },
        {
            "<leader>sn",
            function()
                require("fzf-lua").files({ cwd = vim.fn.stdpath("config") })
            end,
            desc = "[S]earch [N]eovim files",
        },
        {
            "<leader>sh",
            function()
                require("fzf-lua").helptags()
            end,
            desc = "[S]earch [H]elp",
        },
        {
            "<leader>sk",
            function()
                require("fzf-lua").keymaps()
            end,
            desc = "[S]earch [K]eymaps",
        },
        {
            "<leader>su",
            function()
                require("fzf-lua").spell_suggest()
            end,
            desc = "[S]earch Spell S[u]ggest",
        },
        {
            "<leader>sr",
            function()
                require("fzf-lua").resume()
            end,
            desc = "[S]earch [R]esume",
        },
        {
            "<leader>sb",
            function()
                require("fzf-lua").builtin()
            end,
            desc = "[S]earch [B]uiltin",
        },
        {
            "<leader>sw",
            function()
                require("fzf-lua").grep_cword()
            end,
            desc = "[S]earch current [W]ord",
        },
        {
            "<leader>sd",
            function()
                require("fzf-lua").diagnostics_document()
            end,
            desc = "[S]earch [D]iagnostics",
        },
        {
            "<leader>so",
            function()
                require("fzf-lua").oldfiles()
            end,
            desc = "[S]earch [O]ld Files",
        },
        {
            "<leader><leader>",
            function()
                require("fzf-lua").buffers()
            end,
            desc = "[ ] Find existing buffers",
        },
        {
            "<leader>/",
            function()
                require("fzf-lua").lgrep_curbuf()
            end,
            desc = "[/] Live grep the current buffer",
        },
    },
}

-- -      vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
-- -      vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })
-- -      vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]iles" })
-- -      vim.keymap.set("n", "<leader>ss", builtin.builtin, { desc = "[S]earch [S]elect Telescope" })
-- -      vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
-- -      vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
-- -      vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
-- -      vim.keymap.set("n", "<leader>sr", builtin.resume, { desc = "[S]earch [R]esume" })
-- -      vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
-- -      vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
-- -      vim.keymap.set("n", "<leader>su", builtin.spell_suggest, { desc = "[S]pell s[U]ggest" })
--
-- -      vim.keymap.set("n", "<leader>sn", function()
-- -        builtin.find_files({ cwd = vim.fn.stdpath("config") })
-- -      end, { desc = "[S]earch [N]eovim files" })
