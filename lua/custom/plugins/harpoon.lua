return {
  {
    'theprimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { desc = 'Harpoon: ' .. desc })
      end

      map('<leader>a', mark.add_file, '[A]dd')
      map('<leader>e', ui.toggle_quick_menu, 'List Markers')

      map('<leader>1', function()
        ui.nav_file(1)
      end, '1')
      map('<leader>2', function()
        ui.nav_file(2)
      end, '2')
      map('<leader>3', function()
        ui.nav_file(3)
      end, '3')
      map('<leader>4', function()
        ui.nav_file(4)
      end, '4')
      map('<a-u>', function()
        ui.nav_file(1)
      end, '1')
      map('<a-i>', function()
        ui.nav_file(2)
      end, '2')
      map('<a-o>', function()
        ui.nav_file(3)
      end, '3')
      map('<a-p>', function()
        ui.nav_file(4)
      end, '4')
    end,
  },
}
