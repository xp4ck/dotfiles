-- require("modus-themes").setup({
--     style = "auto",
--     transparent = false,
-- }
require("ef-themes").setup({
    light = "ef-eagle",
    dark = "ef-bio",
    transparent = false,
    modules = {
        gitsigns = true,
        -- telescope = true,
        fzf = true,
        cmp = true,
    }

})
vim.o.background = 'light'
vim.cmd.colorscheme 'ef-theme'
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
