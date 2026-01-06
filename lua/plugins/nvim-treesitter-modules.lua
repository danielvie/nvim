return {
  {
    "MeanderingProgrammer/treesitter-modules.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    vscode = true,
    opts = {
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<leader><Enter>",
          node_incremental = "<Enter>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}
