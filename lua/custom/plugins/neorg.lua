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
        ['core.keybinds'] = {
          config = {
            default_keybinds = true,
            neorg_leader = "<Leader>n",
          }
        },
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
              -- index = "C:/SANDBOX/Notes/",
              index = "~/Documents/doutorado.git/docs/notes",
            },
            default_workspace = 'index',
          },
        },
      },
    },
  },
}
