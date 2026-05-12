return {
  cmd = { 'gopls' },
  settings = {
      gopls = {
          buildFlags = { '-tags=integration' }
      }
  },
  filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
  on_attach = function(client, bufnr)
    if not client:supports_method("textDocument/formatting") then
      return
    end

    local group = vim.api.nvim_create_augroup("lsp.gopls.format", { clear = false })
    vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

    vim.api.nvim_create_autocmd("BufWritePre", {
      group = group,
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format({ bufnr = bufnr, id = client.id, timeout_ms = 1000 })
      end,
    })
  end,
}
