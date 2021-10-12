local u = require('utils')
--- package management
require 'paq' {
    {'savq/paq-nvim'};                  -- Let Paq manage itself
    'shaunsingh/nord.nvim';
    'lewis6991/gitsigns.nvim';
    'nvim-lua/plenary.nvim';
    'julialang/julia-vim';
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';
    {'folke/tokyonight.nvim', branch = 'main'};
    'lukas-reineke/indent-blankline.nvim';
    {
        'glepnir/galaxyline.nvim',
        branch = 'main',
    };
    {'kyazdani42/nvim-web-devicons'};
    'nvim-telescope/telescope.nvim';
     'hrsh7th/cmp-nvim-lsp';
     'hrsh7th/cmp-buffer';
     'hrsh7th/nvim-cmp';
     'hrsh7th/cmp-vsnip';
     'hrsh7th/vim-vsnip';
}
