return {
  "zaldih/themery.nvim",
  lazy = false,
  opts = function(_, config)
    config.themeConfigFile = "~/.config/nvim/lua/user/theme.lua"
    config.themes = {
      "catppuccin",
      "gruvbox",
      {
        name = "Gruvbox dark",
        colorscheme = "gruvbox",
        before = [[
      -- All this block will be executed before apply "set colorscheme"
      vim.opt.background = "dark"
    ]],
      },
      "astrodark",
      -- "koehler",
    }
    return config -- return final config table
  end,
}
