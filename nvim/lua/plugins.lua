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
  { "miikanissi/modus-themes.nvim", priority = 1000},
  'windwp/nvim-autopairs',
  'terrortylor/nvim-comment',
  {'akinsho/bufferline.nvim', dependencies = 'nvim-tree/nvim-web-devicons'},
  "lewis6991/gitsigns.nvim",
  {'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  },
  { "hedyhli/outline.nvim" },
  -- language
  {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
      "ray-x/guihua.lua",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  -- themes
  { 'marko-cerovac/material.nvim' },
  { "oonamo/ef-themes.nvim" },
})
