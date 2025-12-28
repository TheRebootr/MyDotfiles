return {
  -- LazyVim overrides
  { 'LazyVim/LazyVim', opts = { colorscheme = 'catppuccin' } },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    opts = {
      flavour = 'mocha',
      transparent_background = true,
      float = {
        transparent = false,
        solid = false,
      },
      -- dim_inactive = {
      --   enabled = true,
      --   shade = 'dark',
      --   percentage = 1,
      -- },
      no_italic = true,
      styles = {
        conditionals = {},
      },
      custom_highlights = function(colors)
        return {
          CursorLineNr = { fg = colors.peach },
          CursorLine = { bg = colors.surface0 },
          RenderMarkdownCodeBorder = { bg = colors.surface0 },
          RenderMarkdownCode = { bg = colors.surface0 },
          RenderMarkdownH1Bg = { fg = colors.crust, bg = colors.peach },
          RenderMarkdownH2Bg = { fg = colors.crust, bg = colors.teal },
          RenderMarkdownH3Bg = { fg = colors.crust, bg = colors.blue },
          RenderMarkdownH4Bg = { fg = colors.crust, bg = colors.lavender },
          RenderMarkdownH1 = { fg = colors.crust, bold = true },
        }
      end,
    },
  },
}
