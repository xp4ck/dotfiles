-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_commits, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- windows
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})

-- neo-tree
vim.keymap.set('n', '<C-n>', '<cmd> Neotree toggle=true source=filesystem reveal=true<CR>', {})
vim.keymap.set('n', '<C-g>', '<cmd> Neotree toggle=true source=git_status reveal=true<CR>', {})

-- outline

-- vim-specific
vim.keymap.set('n', '<leader><leader>', '<cmd> noh <CR><CR>', {})
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- bufferline
vim.keymap.set('n', '<tab>', '<cmd> BufferLineCycleNext <CR>')
vim.keymap.set('n', '<S-Tab>', '<cmd> BufferLineCyclePrev <CR>')
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR><bar><cmd>BufferLineCycleNext<CR>')

-- debugging
vim.keymap.set('n', '<leader>db', '<cmd>DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<leader>dc', '<cmd>DapContinue<CR>')
vim.keymap.set('n', '<leader>ds', '<cmd>DapStepOver<CR>')
vim.keymap.set('n', '<leader>dsi', '<cmd>DapStepInto<CR>')
vim.keymap.set('n', '<leader>dso', '<cmd>DapStepOut<CR>')
vim.keymap.set('n', '<leader>drp', '<cmd>DapToggleRepl<CR>')
vim.keymap.set('n', '<leader>dpp', '<cmd>lua require("dapui").toggle()<CR>')

-- git
vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>')
vim.keymap.set('n', '<leader>nh', '<cmd>Gitsigns next_hunk<CR>')
vim.keymap.set('n', '<leader>ph', '<cmd>Gitsigns prev_hunk<CR>')
vim.keymap.set('n', '<leader>sh', '<cmd>Gitsigns stage_hunk<CR>')
vim.keymap.set('n', '<leader>hp', '<cmd>Gitsigns preview_hunk_inline<CR>')
vim.keymap.set('n', '<leader>rh', '<cmd>Gitsigns reset_hunk<CR>')

-- neotest
vim.keymap.set('n', '<leader>tr', "<cmd>lua require('neotest').run.run()<CR>")
vim.keymap.set('n', '<leader>trd', "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>")
vim.keymap.set('n', '<leader>trs', "<cmd>lua require('neotest').run.stop()<CR>")
vim.keymap.set('n', '<leader>ts', "<cmd>lua require('neotest').summary.toggle()<CR>")
vim.keymap.set('n', '<leader>to', "<cmd>lua require('neotest').output_panel.toggle()<CR>")

--inc-rename
vim.keymap.set("n", "<leader>rn", ":IncRename ")
