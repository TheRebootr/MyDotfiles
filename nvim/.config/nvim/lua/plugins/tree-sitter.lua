return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add css and vue
    vim.list_extend(opts.ensure_installed, {
      "css",
      "vue",
    })
  end,
}
