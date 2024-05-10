return {
  "zaldih/themery.nvim",
  lazy = false,
  opts = function(_, config)
    config.themeConfigFile = "~/.config/nvim/lua/user/theme.lua"
    config.themes = {
      "catppuccin",
      {
        name = "Gruvbox dark",
        colorscheme = "gruvbox",
        before = [[
      -- All this block will be executed before apply "set colorscheme"
      vim.opt.background = "dark"
    ]],
      },
      "astrodark",
      "desert",
      {
        name = "Tokyo Night",
        colorscheme = "tokyonight",
        before = [[
      vim.opt.background = "dark"
    ]],
      },
      -- "koehler",
    }
    return config -- return final config table
  end,
}
