vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

require('nord').set()
-- vim.cmd.colorscheme("modus")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NvimTreeFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsNormal", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { bg = "none" })
vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { bg = "none" })
