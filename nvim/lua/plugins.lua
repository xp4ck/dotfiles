vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('tpope/vim-fugitive')
  use {
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
  }
  use({ "miikanissi/modus-themes.nvim" })
  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use "mfussenegger/nvim-dap"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use "mfussenegger/nvim-dap-python"
  use "leoluz/nvim-dap-go"
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
      'folke/todo-comments.nvim',
      requires = { "nvim-tree/nvim-web-devicons" }
  }
  use "lewis6991/gitsigns.nvim"
  use {
  "nvim-neotest/neotest",
    requires = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "antoinemadec/FixCursorHold.nvim"
    }
  }
  use {"nvim-neotest/neotest-python"}
  use "fatih/vim-go"
  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  }
  use "folke/tokyonight.nvim"
  use{'nvim-tree/nvim-tree.lua', requires = {{'nvim-tree/nvim-web-devicons'}}}
  use 'kuznetsss/meadow.nvim'

end)
