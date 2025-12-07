-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set('i', 'jj', '<Esc>', { noremap = false })

-- Tmux Navigator Remapping
vim.keymap.set('n', '<C-Left>', '<cmd>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>TmuxNavigateRight<CR>')
