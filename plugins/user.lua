return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- 'andweeb/presence.nvim',
  -- {
  --   'ray-x/lsp_signature.nvim',
  --   event = 'BufRead',
  --   config = function()
  --     require('lsp_signature').setup()
  --   end,
  -- },
  {
    "s1n7ax/nvim-window-picker",
  },
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = function() require("goto-preview").setup {} end,
  },
}
