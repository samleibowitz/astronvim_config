--
return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
    cmd = { "TodoQuickFix" },
  },
  {
    "mistricky/codesnap.nvim",
    lazy = "true",
    build = "make",
    cmd = { "CodeSnapPreviewOn" },
    config = function(_, opts) require("codesnap").setup(opts or {}) end,
  },
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup {
        -- Configuration here, or leave empty to use defaults
        --font = "Apple Color Emoji=34;FiraCode Nerd Font=34",
        font = "Noto Emoji=34;FiraCode Nerd Font=34",
        command = "/Users/sam/.cargo/bin/silicon",
        -- command = "/opt/homebrew/bin/silicon",
        debug = true,
        disable_defaults = true,
        language = "lua",
        output = "/Users/sam/Desktop/silicon.png",
      }
    end,
  },
  {
    require("oil").setup(),
  },
}
