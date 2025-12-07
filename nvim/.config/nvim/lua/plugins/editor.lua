return {
  { 'folke/which-key.nvim', opts = { delay = 800 } },
  {
    'folke/flash.nvim',
    ---@type Flash.Config
    opts = {
      labels = 'arstgmneioqwfbjluyzxcdvkh',
      label = { rainbow = { enabled = true } },
    },
  },
  {
    'monaqa/dial.nvim',
    keys = {
      { '<leader>i', '', desc = '+increment', mode = { 'n', 'v' } },
      {
        '<leader>ia',
        '<C-a>',
        desc = 'Increment',
        remap = true,
      },
      {
        '<leader>ix',
        '<C-x>',
        desc = 'Decrement',
        remap = true,
      },
      -- {
      --   'gda',
      --   'g<C-a>',
      --   desc = 'Increment',
      --   remap = true,
      -- },
      -- {
      --   'gdx',
      --   'g<C-x>',
      --   desc = 'Decrement',
      --   remap = true,
      -- },
    },
  },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    keys = function()
      local keys = {
        {
          '<leader>H',
          function()
            require('harpoon'):list():add()
          end,
          desc = 'Harpoon File',
        },
        {
          '<leader>h',
          function()
            local harpoon = require 'harpoon'
            harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = 'Harpoon Quick Menu',
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          '<leader>' .. i,
          function()
            require('harpoon'):list():select(i)
          end,
          desc = 'Harpoon to File ' .. i,
        })
      end
      return keys
    end,
  },
  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '' },
        topdelete = { text = '' },
        changedelete = { text = '~' },
        untracked = { text = '┆' },
      },
      signs_staged = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '' },
        topdelete = { text = '' },
        changedelete = { text = '~' },
      },
    },
  },
}
