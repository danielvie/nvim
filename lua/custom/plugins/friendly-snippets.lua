return {
  {
    'rafamadriz/friendly-snippets',
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load()

      require('luasnip.loaders.from_vscode').load { paths = 'C:/Users/ae904f/AppData/Local/nvim/snippets' }
      -- require("luasnip").filetype_extend("typescript", { "tsdoc" })
    end,
  },
}
