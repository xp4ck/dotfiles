-- require("modus-themes").setup({
--     style = "auto",
--     transparent = false,
-- })
require('solarized').setup({
 variant = 'spring',
 transparent = {
    enabled = true,         -- Master switch to enable transparency
    pmenu = true,           -- Popup menu (e.g., autocomplete suggestions)
    normal = true,          -- Main editor window background
    normalfloat = true,     -- Floating windows
    neotree = true,         -- Neo-tree file explorer
    nvimtree = true,        -- Nvim-tree file explorer
    whichkey = true,        -- Which-key popup
    telescope = true,       -- Telescope fuzzy finder
    lazy = true,            -- Lazy plugin manager UI
    mason = true,           -- Mason manage external tooling
  },
})
vim.o.background = 'light'
vim.cmd.colorscheme 'solarized'
-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NvimTreeNC", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NvimTreeFloat", { bg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
-- vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
