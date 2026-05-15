vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- SET
local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.wrap = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

opt.swapfile = false
opt.backup = false
opt.showmode = false
opt.signcolumn = "yes"

opt.incsearch = true
opt.hlsearch = true
opt.updatetime = 100
opt.clipboard = "unnamedplus"
opt.termguicolors = true
opt.grepprg = "rg --vimgrep"

opt.autocomplete = true
opt.completeopt = { "menuone", "noselect", "popup" }
opt.complete = ".,w,b"
opt.pumheight = 8
opt.pumborder = "none"
opt.pummaxwidth = 80
opt.winborder = "none"

vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "CursorHoldI", "FocusGained" }, {
  pattern = "*",
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd.checktime()
    end
  end,
})

-- PLUGINS
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
local plugins = {
  {
      "aktersnurra/no-clown-fiesta.nvim",
      lazy = false,
  },
  {
    "nvim-mini/mini.nvim",
    version = "*",
    lazy = false,
    config = function()
      require("mini.files").setup({})
      require("mini.pairs").setup({})
    end,
    keys = {
      {
        "<C-n>",
        function()
          local mini_files = require("mini.files")
          if not mini_files.close() then
            local path = vim.api.nvim_buf_get_name(0)
            mini_files.open(path ~= "" and path or vim.uv.cwd(), false)
          end
        end,
        desc = "Toggle file explorer",
      },
    }, },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
  },
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = {
      pickers = {
        find_files = {
          previewer = false,
          theme = "dropdown",
          find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      pcall(telescope.load_extension, "fzf")
    end,
    keys = {
      {
        "<leader>ff",
        function() require("telescope.builtin").find_files() end,
      },
      {
        "<leader>fw",
        function() require("telescope.builtin").live_grep() end,
      },
      {
        "<leader>fg",
        function() require("telescope.builtin").diagnostics() end,
      },
      {
        "<leader>fs",
        function() require("telescope.builtin").current_buffer_fuzzy_find() end,
      },
      {
        "<leader>fb",
        function() require("telescope.builtin").buffers() end,
      },
      {
        "<leader>fr",
        function() require("telescope.builtin").lsp_references() end,
      },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {},
    keys = {
      {
        "<leader>nh",
        function() require("gitsigns").next_hunk() end,
      },
      {
        "<leader>ph",
        function() require("gitsigns").prev_hunk() end,
      },
      {
        "<leader>sh",
        function() require("gitsigns").stage_hunk() end,
      },
      {
        "<leader>rh",
        function() require("gitsigns").reset_hunk() end,
      },
      {
        "<leader>hp",
        function() require("gitsigns").preview_hunk_inline() end,
      },
    },
  },
}
require("lazy").setup(plugins, {
  defaults = { lazy = true },
  checker = { enabled = false },
  change_detection = { notify = false },
})
vim.cmd.colorscheme("no-clown-fiesta")
-------------------------------------------------------------------------------------

-- MAPPINGS
local map = vim.keymap.set
map("n", "<C-h>", "<C-w>h", { silent = true })
map("n", "<C-l>", "<C-w>l", { silent = true })
map("n", "<C-j>", "<C-w>j", { silent = true })
map("n", "<C-k>", "<C-w>k", { silent = true })
map("n", "<leader>sv", "<cmd>vsplit<CR>", { silent = true })

map("n", "<leader><leader>", "<cmd>nohlsearch<CR>", { silent = true })
map("n", "<C-d>", "<C-d>zz", { silent = true })
map("n", "<C-u>", "<C-u>zz", { silent = true })

map("n", "gd", vim.lsp.buf.definition, { silent = true, desc = "LSP definition" })
map("n", "<leader>fd", vim.diagnostic.open_float, { silent = true, desc = "Line diagnostics" })
-------------------------------------------------------------------------------------
-- LSP & DIAGNOSTICS

vim.diagnostic.config({
  virtual_lines = { current_line = true },
  severity_sort = true,
  signs = { severity = { min = vim.diagnostic.severity.WARN } },
  underline = { severity = { min = vim.diagnostic.severity.WARN } },
})

local lsp_group = vim.api.nvim_create_augroup("user.lsp", { clear = true })
vim.api.nvim_create_autocmd("LspAttach", {
  group = lsp_group,
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end
  end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  group = lsp_group,
  callback = function(args)
    if vim.bo[args.buf].buftype == "" then  -- Only for normal buffers
      vim.diagnostic.enable(not vim.wo.diff, { bufnr = args.buf })
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = lsp_group,
  pattern = "TelescopePrompt",
  callback = function() vim.opt_local.autocomplete = false end,
})
vim.lsp.enable({ "basedpyright", "gopls", "protols", "lua_ls" })
-------------------------------------------------------------------------------------
-- TRESITTER
require('nvim-treesitter').install({ "go", "lua", "python", "proto", "vimdoc" })
vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    local lang = vim.treesitter.language.get_lang(args.match)
    if vim.treesitter.language.add(lang or args.match) then
      vim.treesitter.start(args.buf)
    end
  end,
})
