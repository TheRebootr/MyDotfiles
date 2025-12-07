return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    -- { "<leader>e", ":Neotree float<CR>", desc = "NeoTree", silent = true },
    -- { "<leader>e", ":Neotree right<CR>", desc = "NeoTree", silent = true },
    { "<leader>e", ":Neotree right<CR>", desc = "Explorer NeoTree (Root Dir)", remap = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ["<leader>e"] = "close_window",
        },
      },
    },
  },
}
