require("telescope").setup{
    pickers = {
        find_files = {
            previewer = false,
            theme = "dropdown",
            find_command = {'rg', '--files', '--hidden', '-g', '!.git' },
        }
    }
}
