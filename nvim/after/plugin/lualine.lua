require("lualine").setup {
    options = {
        theme = 'solarized',
        disabled_filetypes = {
            'NvimTree',
        },
    },
    sections = {
        lualine_c = {
            {
            'filename',
            path = 1,
        },
        },
    },
}
