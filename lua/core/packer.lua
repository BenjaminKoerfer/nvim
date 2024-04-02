-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- s
vim.cmd [[packadd packer.nvim]]

--
return require('packer').startup(function(use)
    -- Packer can manage itself
    -- nvim
    use 'ggandor/leap.nvim'
    --
    use { 'ArbitRandomUser/latexrenderer' }
    use { 'github/copilot.vim' }
    use 'vimwiki/vimwiki'

    -- Telescope
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    use 'christoomey/vim-tmux-navigator'
    use 'lervag/vimtex'
    use 'wbthomason/packer.nvim'
    use 'ThePrimeagen/vim-be-good'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- color schemes
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use { "catppuccin/nvim", as = "catppuccin" }

    use({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function()
            vim.cmd("colorscheme kanagawa")
        end
    })

    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim", as = "darcula-solid" }

    use { 'AlexvZyl/nordic.nvim', as = "nordic" }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "ray-x/aurora", as = "aurora" }
    use { "ellisonleao/gruvbox.nvim", as = "gruvbox" }
    use { 'rmehri01/onenord.nvim', as = "onenord" }
    use { 'NTBBloodbath/doom-one.nvim', as = "doom-one" }
    use { 'ramojus/mellifluous.nvim', as = "mellifluous" }
    use { "rafamadriz/neon", as = "neon" }
    use { "folke/tokyonight.nvim", as = "tokyonight" }
    --color schemes end

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    -- completion and lsp
    use("williamboman/mason.nvim")
    use("williamboman/mason-lspconfig.nvim")
    use("neovim/nvim-lspconfig")
    -- cmp
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-nvim-lsp')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-nvim-lua')

    -- flutter
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim', -- optional for vim.ui.select
        },
    }

    -- LuaSnip
    use({
        "L3MON4D3/LuaSnip",
        tag = "v2.*",
        build = "make install_jsregexp"
    })
    use('saadparwaiz1/cmp_luasnip')
    use "sar/friendly-snippets.nvim"

    -- UltiSnips
    use("SirVer/ultisnips")

    -- comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use {
        "folke/todo-comments.nvim",
        requires = { "nvim-lua/plenary.nvim", },
    }
    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }
    use 'nvim-lualine/lualine.nvim'
    use 'stevearc/conform.nvim'

    -- custom plugins
    -- use '~/work/plugins/start.nvim'
    -- use '~/work/plugins/todocomment'
    -- use '~/work/plugins/wordcount'
    use '~/work/plugins/latexnavigator'
end)
