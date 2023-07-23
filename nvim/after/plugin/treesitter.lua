require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go", "lua", "vim", "vimdoc", "query", "python" },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
