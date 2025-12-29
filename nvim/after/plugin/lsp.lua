vim.diagnostic.config({
  virtual_lines = {
   current_line = true,
  },
  virtual_text = { severity_limit = "Error" }, -- Show only errors as virtual text
  signs = { severity_limit = "Error" },    -- Show signs for warnings and up
  underline = { severity_limit = "Error" },  -- Underline errors only
})
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    vim.keymap.set("n", "gd", "<C-]>", { silent = true, buffer = args.buf })
  end,
})

