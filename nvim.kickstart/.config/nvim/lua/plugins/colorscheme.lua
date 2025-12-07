return {
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      auto_integrations = true,
      no_italic = true,
      custom_highlights = function(colors)
        return {
          RenderMarkdownCodeBorder = { bg = colors.surface0 },
          RenderMarkdownCode = { bg = colors.surface0 },
          RenderMarkdownH1Bg = { fg = colors.crust, bg = colors.maroon },
          RenderMarkdownH2Bg = { fg = colors.crust, bg = colors.green },
          RenderMarkdownH3Bg = { fg = colors.crust, bg = colors.sky },
          RenderMarkdownH4Bg = { fg = colors.crust, bg = colors.blue },
          RenderMarkdownH1 = { fg = colors.crust, bold = true },
        }
      end,
    }

    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme 'catppuccin'
  end,
}
