return {
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '*',
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ['core.defaults'] = {},
        ['core.itero'] = {},
        ['core.ui.calendar'] = {},
        ['core.keybinds'] = {},
        ['core.concealer'] = {},
        ['core.completion'] = {
          config = {
            engine = "nvim-cmp"
          }
        },
        ['core.export'] = {},
        ['core.dirman'] = {
          config = {
            workspaces = {
              -- index = "~/Documents/doutorado.git/docs/notes",
              -- index = 'C:/Users/daniel/Documents/notes/',
              index = 'C:/SANDBOX/NOTES/',
              doc = 'C:/Users/daniel/Documents/DOUTORADO/docs/notes',
            },
            default_workspace = 'index',
          },
        },
      },
    },
  },
}
