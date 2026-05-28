return {
  {
    "MeanderingProgrammer/treesitter-modules.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    vscode = true,
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<A-m>",
          node_incremental = "<A-m>",
          scope_incremental = false,
          node_decremental = "<A-.>",
        },
      },
    },
  },
}
