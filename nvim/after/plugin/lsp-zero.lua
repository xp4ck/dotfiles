local lsp = require('lsp-zero').preset('recommended')
lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)
lsp.set_preferences({
  sign_icons = { }
})


-- lsp server setups
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


lsp.setup()


local cmp = require('cmp')
-- completion mappings
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    ['<C-k>'] = cmp.mapping.complete(),
  }
})

-- place () after completing a function
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
