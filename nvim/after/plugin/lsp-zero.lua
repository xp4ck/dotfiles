local lsp = require('lsp-zero').preset('recommended')
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)


require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
require('lspconfig').pyright.setup {
    settings = {
        python = {
            analysis = {
                reportGeneralTypeIssues = false
            }
        }
    }
}

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
