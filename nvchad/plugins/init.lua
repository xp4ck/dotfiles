local overrides = require "custom.plugins.overrides"

local plugins = {
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },
  ["ray-x/go.nvim"] = {},
  ["tpope/vim-fugitive"] = {},
}

return plugins
