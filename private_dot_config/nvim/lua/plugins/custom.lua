return {
  {
        'nvim-telescope/telescope.nvim', version = '0.1.6',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} },
        lazy = false
  }, 

  {'nvim-treesitter/playground'},
  {'tpope/vim-fugitive'},
  {
    'mbbill/undotree',
    lazy = false
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false
  },

  {'echasnovski/mini.nvim'},
}
