local lsp = require('lsp-zero').preset('recommended')
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.set_preferences({
  sign_icons = { }
})
lsp.setup()


local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-Space>'] = cmp.mapping.complete(),
  }
})
