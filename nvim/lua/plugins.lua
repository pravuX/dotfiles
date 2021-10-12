local u = require('utils')
--- package management
require 'paq' {
    {'savq/paq-nvim'};                  -- Let Paq manage itself
    'shaunsingh/nord.nvim';
    {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}};
    'nvim-lua/plenary.nvim';
    'julialang/julia-vim';
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';
    {'junegunn/fzf', run = u.fn['fzf#install']};
    'junegunn/fzf.vim';
    'ojroques/nvim-lspfuzzy';
    {'folke/tokyonight.nvim', branch = 'main'};
    'lukas-reineke/indent-blankline.nvim';
}
