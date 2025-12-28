-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Remap enter to open the fold where the cursor is
vim.keymap.set('n', '<CR>', 'za', { desc = 'Toggle Fold' })

-- Tmux Navigator Remapping
vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>')
