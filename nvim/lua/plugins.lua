return require('lazy').setup({
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  },
  'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'},
  'tpope/vim-fugitive',
  {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
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
  { "miikanissi/modus-themes.nvim" },
  'windwp/nvim-autopairs',
  'terrortylor/nvim-comment',
  {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'},
  "mfussenegger/nvim-dap",
  { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} },
  "mfussenegger/nvim-dap-python",
  "leoluz/nvim-dap-go",
  {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  "lewis6991/gitsigns.nvim",
  {
  "nvim-neotest/neotest",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim"
    }
  },
  {"nvim-neotest/neotest-python"},
  "fatih/vim-go",
  {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {'nvim-tree/nvim-tree.lua', requires = {{'nvim-tree/nvim-web-devicons'}}},
  {'nyoom-engineering/oxocarbon.nvim'},
  'jacoborus/tender.vim',
  "craftzdog/solarized-osaka.nvim",
  'Yagua/nebulous.nvim',
  })
