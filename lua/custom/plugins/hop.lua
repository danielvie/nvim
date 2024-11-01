return {
  {
    "phaazon/hop.nvim",
    opts = {},
    config = function()
      local hop = require("hop")
      local directions = require("hop.hint").HintDirection

      -- start hop
      hop.setup({ keys = "etovxqpdygfblzhckisuran" })

      -- vim.keymap.set("", "s", function()
      --   hop.hint_words({ direction = directions.AFTER_CURSOR, current_line_only = false })
      -- end, { remap = true })

      -- vim.keymap.set("n", "S", function()
      --   hop.hint_words({ direction = directions.BEFORE_CURSOR, current_line_only = false })
      -- end, { remap = true })
      --
      vim.keymap.set("n", "S", ":HopWord<cr>", { desc = "HopWord" })
      vim.keymap.set("n", "<leader>gl", ":HopLine<cr>", { desc = "HopLine" })

      vim.keymap.set("", "f", function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
      end, { remap = true })
      vim.keymap.set("", "F", function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
      end, { remap = true })
      vim.keymap.set("", "t", function()
        hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
      end, { remap = true })
      vim.keymap.set("", "T", function()
        hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
      end, { remap = true })
    end,
  },
}
