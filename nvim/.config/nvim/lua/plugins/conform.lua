return {
  'stevearc/conform.nvim',
  opts = {
    formatters = {
      ['markdownlint-cli2'] = {
        condition = function(_, ctx)
          local diag = vim.tbl_filter(function(d)
            return d.source == 'markdownlint'
          end, vim.diagnostic.get(ctx.buf))
          return #diag > 0
        end,
      },
    },
    formatters_by_ft = {
      ['markdown'] = { 'prettier', 'markdownlint-cli2' },
      ['markdown.mdx'] = { 'prettier', 'markdownlint-cli2' },
    },
  },
}
