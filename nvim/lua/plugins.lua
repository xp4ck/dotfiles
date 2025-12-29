return require('lazy').setup({
  -- base
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  'tpope/vim-fugitive',
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},
  'windwp/nvim-autopairs',
  "lewis6991/gitsigns.nvim",
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
  { "hedyhli/outline.nvim" },
  { 'nvim-mini/mini.nvim', version = '*' },
  -- themes
  { 'marko-cerovac/material.nvim' },
  { "oonamo/ef-themes.nvim" },
  { "loctvl842/monokai-pro.nvim" },
  { "miikanissi/modus-themes.nvim", priority = 1000},
})
