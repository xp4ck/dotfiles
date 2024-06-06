return require('lazy').setup({
  {
    'nvim-telescope/telescope.nvim', version = '0.1.6',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  {'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
  'tpope/vim-fugitive',
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.api.nvim_command, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
  },
  { "miikanissi/modus-themes.nvim", priority = 1000},
  'windwp/nvim-autopairs',
  'terrortylor/nvim-comment',
  {'akinsho/bufferline.nvim', version = "v4.5.3", dependencies = 'nvim-tree/nvim-web-devicons'},
  "lewis6991/gitsigns.nvim",
  "fatih/vim-go",
  {'nvim-tree/nvim-tree.lua', dependencies = {{'nvim-tree/nvim-web-devicons'}}},
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  })
