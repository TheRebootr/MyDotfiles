-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<C-s>', '<cmd>write<CR>')
vim.keymap.set('n', '<leader>d', '<cmd>NoiceDismiss<CR>', { desc = 'Dismiss Noice' })
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Tmux Navigator Remapping
vim.keymap.set('n', '<C-Left>', '<cmd>TmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-Down>', '<cmd>TmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-Up>', '<cmd>TmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-Right>', '<cmd>TmuxNavigateRight<CR>')

-- Diagnostic keymaps
-- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- whichkey keymaps
local wk = require 'which-key'

-- Grouping
wk.add {
  { '<leader>s', group = '[s]earch' },
  { '<leader>c', group = '[c]ode' },
  { '<leader>t', group = '[t]oggle' },
  { '<leader>h', group = 'git [h]unk', mode = { 'n', 'v' }, icon = '' },
  { '<leader>l', group = '[l]ist' },
  { '<leader>C', group = 'o[C]to' },
}

-- Code Shortcuts
wk.add {
  {
    '<leader>f',
    function()
      require('conform').format { async = true, lsp_format = 'fallback' }
    end,
    desc = '[F]ormat Buffer',
    icon = '',
  },
  {
    '<leader>Cr',
    '<cmd>Octo review<cr>',
    desc = 'Octo Pull Request Review',
  },
  { '<leader>q', '<cmd>Trouble diagnostics toggle focus=true<CR>', desc = 'Diagnostic [Q]uickfix' },
  {
    {
      '<leader>ld',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[d]iagnostics',
    },
    {
      '<leader>lD',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = 'Buffer [D]iagnostics',
    },
    {
      '<leader>cs',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[c]ode [s]ymbols',
    },
    {
      '<leader>cl',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[c]ode [L]SP Definitions / References / ...',
    },
    {
      '<leader>ll',
      '<cmd>Trouble loclist toggle<cr>',
      desc = '[l]ocation List)',
    },
    {
      '<leader>lQ',
      '<cmd>Trouble qflist toggle<cr>',
      desc = '[q]uickfix List',
    },
  },
}

-- Buffer
wk.add {
  { '<leader>b', group = 'Buffer' },
  { '<leader>bd', '<cmd>bd<CR>', desc = 'delete buffer' },
  { '<leader>bn', '<cmd>bn<CR>', desc = 'next buffer' },
  { '<leader>bp', '<cmd>bp<CR>', desc = 'previous buffer' },
  { '<leader>d', group = 'Diff' },
  { '<leader>do', '<cmd>DiffviewOpen<CR>', desc = 'diff [o]pen' },
  { '<leader>dc', '<cmd>tabclose<CR>', desc = 'diff [c]lose' },
}
