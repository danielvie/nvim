return {
  {
    "MeanderingProgrammer/treesitter-modules.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    vscode = true,
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<A-,>",
          node_incremental = "<A-,>",
          scope_incremental = false,
          node_decremental = "<A-m>",
        },
      },
    },
  },
}
