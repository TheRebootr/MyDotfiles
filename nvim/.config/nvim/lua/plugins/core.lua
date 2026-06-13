return {
  -- LazyVim overrides
  { 'LazyVim/LazyVim', opts = { colorscheme = 'catppuccin-nvim' } },
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    lazy = false,
    priority = 1000,
    opts = {
      flavour = 'mocha',
      transparent_background = true,
      float = {
        transparent = false,
        solid = false,
      },
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
    -- catppuccin compiles highlights to a cache keyed by the opts hash.
    -- setup() MUST run before the colorscheme is applied, otherwise load()
    -- self-calls setup() with empty opts and bakes a solid (non-transparent)
    -- cache. Doing it explicitly here guarantees the correct order.
    config = function(_, opts)
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme('catppuccin-nvim')
    end,
  },
}
