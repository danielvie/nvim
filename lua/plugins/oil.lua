return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        skip_confirm_for_simple_edits = true,
        columns = { "icon" },
        keymaps = {
          ["<C-h>"] = false,
          ["<M-h>"] = "actions.select_split",
        },
        view_options = {
          show_hidden = true,
          natural_order = true,
          -- is_always_hidden = function(name, _)
          --   return name == '..' or name == '.git'
          -- end,
        },
        win_options = {
          wrap = true,
        },
      })

      -- Open parent directory in current window
      vim.keymap.set("n", "-", "<cmd>Oil<cr>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "<leader>-", require("oil").toggle_float, { desc = "Open parent directory (float)" })
    end,
  },
}
