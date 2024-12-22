return {
  {
    'nvim-neorg/neorg',
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = true,
    opts = {
      load = {
        ['core.defaults'] = {},
        ['core.itero'] = {},
        ['core.keybinds'] = {},
        ['core.concealer'] = {},
        ['core.export'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              index = 'C:/SANDBOX/Notes/',
            },
            default_workspace = 'index',
          },
        },
      },
    },
  },
}
