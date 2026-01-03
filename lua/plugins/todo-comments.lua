return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    signs = true,
    keywords = {
      NOTE = {
        icon = "🔖",
        color = "#a142e5",
        alt = { "INFO", ".." },
      },
    },
  },
}
