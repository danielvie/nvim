return {
    {
        'theprimeagen/harpoon',
        branch = 'harpoon2',
        dependencies = {
            'nvim-lua/plenary.nvim',
        },
        config = function()
            local harpoon = require 'harpoon'
            harpoon:setup()

            local map = function(keys, func, desc)
                vim.keymap.set('n', keys, func, { desc = 'Harpoon: ' .. desc })
            end

            map('<leader>a', function()
                harpoon:list():add()
            end, '[A]dd')
            map('<leader>e', function()
                harpoon.ui:toggle_quick_menu(harpoon:list())
            end, 'List Markers')

            map('<leader>1', function()
                harpoon:list():select(1)
            end, '1')
            map('<leader>2', function()
                harpoon:list():select(2)
            end, '2')
            map('<leader>3', function()
                harpoon:list():select(3)
            end, '3')
            map('<leader>4', function()
                harpoon:list():select(4)
            end, '4')
            map('<a-u>', function()
                harpoon:list():select(1)
            end, '1')
            map('<a-i>', function()
                harpoon:list():select(2)
            end, '2')
            map('<a-o>', function()
                harpoon:list():select(3)
            end, '3')
            map('<a-p>', function()
                harpoon:list():select(4)
            end, '4')

            -- basic telescope configuration
            -- local conf = require('telescope.config').values
            -- local function toggle_telescope(harpoon_files)
            --     local file_paths = {}
            --     for _, item in ipairs(harpoon_files.items) do
            --         table.insert(file_paths, item.value)
            --     end
            --
            --     require('telescope.pickers')
            --         .new({}, {
            --             prompt_title = 'Harpoon',
            --             finder = require('telescope.finders').new_table {
            --                 results = file_paths,
            --             },
            --             previewer = conf.file_previewer {},
            --             sorter = conf.generic_sorter {},
            --         })
            --         :find()
            -- end
            -- map('<C-e>', function()
            --     toggle_telescope(harpoon:list())
            -- end, 'Open harpoon window')
        end,
    },
}
