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
  use{'nvim-tree/nvim-tree.lua', requires = {{'nvim-tree/nvim-web-devicons'}}}
  use 'windwp/nvim-autopairs'
  use 'terrortylor/nvim-comment'
  use 'Mofiqul/dracula.nvim'
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use "mfussenegger/nvim-dap"
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use "leoluz/nvim-dap-go"
end)
