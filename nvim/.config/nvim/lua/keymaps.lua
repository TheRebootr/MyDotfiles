-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>write<CR>')
vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>bprev<CR>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>nd', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice alert' })

-- Tmux Navigator Remapping
vim.keymap.set('n', '<C-Left>', '<cmd>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>TmuxNavigateRight<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
