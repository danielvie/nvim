return {
  {
    'rafamadriz/friendly-snippets',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()

      -- local appdata = os.getenv 'LOCALAPPDATA'
      local appdata = '~'

      require('luasnip.loaders.from_vscode').load { paths = appdata .. '/nvim/snippets' }
    end,
  },
}
