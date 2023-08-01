vim.g.mapleader = " "

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fg', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- windows
vim.keymap.set('n', '<C-h>', '<C-w>h', {})
vim.keymap.set('n', '<C-l>', '<C-w>l', {})
vim.keymap.set('n', '<C-j>', '<C-w>j', {})
vim.keymap.set('n', '<C-k>', '<C-w>k', {})

-- nvim-tree
vim.keymap.set('n', '<C-n>', '<cmd> NvimTreeFindFileToggle <CR>', {})
vim.keymap.set('n', '<C-S-n>', '<cmd> NvimTreeToggle <CR>', {})

-- vim-specific
vim.keymap.set('n', '<leader><leader>', '<cmd> noh <CR><CR>', {})
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

-- bufferline
vim.keymap.set('n', '<tab>', '<cmd> BufferLineCycleNext <CR>')
vim.keymap.set('n', '<S-Tab>', '<cmd> BufferLineCyclePrev <CR>')
vim.keymap.set('n', '<leader>x', '<cmd>bd<CR><bar><cmd>BufferLineCycleNext<CR>')

-- debugging
vim.keymap.set('n', '<leader>b', '<cmd>DapToggleBreakpoint<CR>')
vim.keymap.set('n', '<leader>bc', '<cmd>DapContinue<CR>')
vim.keymap.set('n', '<leader>bs', '<cmd>DapStepOver<CR>')
vim.keymap.set('n', '<leader>bsi', '<cmd>DapStepInto<CR>')
vim.keymap.set('n', '<leader>bsi', '<cmd>DapStepOut<CR>')
vim.keymap.set('n', '<leader>rp', '<cmd>DapToggleRepl<CR>')

-- git
vim.keymap.set('n', '<leader>gs', '<cmd>Git<CR>')
vim.keymap.set('n', '<leader>nh', '<cmd>Gitsigns next_hunk<CR>')
vim.keymap.set('n', '<leader>ph', '<cmd>Gitsigns prev_hunk<CR>')
vim.keymap.set('n', '<leader>sh', '<cmd>Gitsigns stage_hunk<CR>')
