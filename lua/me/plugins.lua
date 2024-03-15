return{

    -- buffer navigation
    -- 'nvim-lualine/lualine.nvim',
    --
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },
    'feline-nvim/feline.nvim',
    'ojroques/nvim-bufdel',

    -- themes
    {'catppuccin/nvim', name = "catppuccin"},

    {'github/copilot.vim'},

    -- telescope
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
        cmd = "Telescope"
    },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make", enabled = vim.fn.executable "make" == 1},
    "nvim-telescope/telescope-file-browser.nvim",

    -- treesitter
    { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'nvim-treesitter/playground',
    'nvim-treesitter/nvim-treesitter-context',

    -- lsp
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'neovim/nvim-lspconfig',
    'rafamadriz/friendly-snippets',

    -- lsp saga
    {
        "glepnir/lspsaga.nvim",
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = { {"nvim-tree/nvim-web-devicons"} }
    },

    -- git
    'sindrets/diffview.nvim',
    'tpope/vim-fugitive',
    'lewis6991/gitsigns.nvim',

    -- harpoon
    {
        'theprimeagen/harpoon',
        dependencies = {'nvim-lua/plenary.nvim'}
    },

    -- comments
    {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    },

    -- surround
    'tpope/vim-surround',
    'tpope/vim-repeat',

    -- replace with `gr`
    'vim-scripts/ReplaceWithRegister',

    -- replace next, ex: cin'
    'wellle/targets.vim',

    -- autoclose parens, brackets, quotes, etc...
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup {}
        end
    },

    -- alpha (manage projects)
    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('alpha').setup(require('me.alpha_theme').config)
        end
    },

    -- color highlight
    'uga-rosa/ccc.nvim',

    -- -- leap
    -- {
    --     'ggandor/leap.nvim',
    --     config = function()
    --         require('leap').add_default_mappings()
    --     end
    -- },

    -- creating plugin
    { dir = "/Users/danielvieira/Sandbox/plugins.nvim/stackmap.nvim" }
}
