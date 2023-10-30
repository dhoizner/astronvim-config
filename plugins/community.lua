return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.git.neogit" },
  {
    "NeogitOrg/neogit",
    opts = {
      disable_line_numbers = false,
    },
  },
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      integrations = {
        window_picker = true,
      },
    },
  },
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.completion.cmp-cmdline" },
  { import = "astrocommunity.motion.leap-nvim" },
  -- { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },
  -- {
  --   "altermo/ultimate-autopair.nvim",
  --   event = "InsertEnter",
  --   opts = {
  --     -- disable autopair in the command line: https://github.com/altermo/ultimate-autopair.nvim/issues/8
  --     cmap = false,
  --     extensions = { -- *ultimate-autopair-extensions-default-config*
  --       cmdtype = { skip = { "/", "?", "@", "-" }, p = 100 },
  --       filetype = { p = 90, nft = { "TelescopePrompt" }, tree = true },
  --       escape = { filter = true, p = 80 },
  --       utf8 = { p = 70 },
  --       tsnode = { p = 60, separate = { "comment", "string", "raw_string" } },
  --       cond = { p = 40, filter = true },
  --       alpha = { p = 30, filter = false, all = false },
  --       suround = { p = 20 },
  --       fly = {
  --         other_char = { " " },
  --         nofilter = false,
  --         p = 10,
  --         undomapconf = {},
  --         undomap = nil,
  --         undocmap = nil,
  --         only_jump_end_pair = false,
  --       },
  --     },
  --     -- extensions = {
  --     --   cond = {
  --     --     cond = function(fn) return not fn.in_node "comment" end,
  --     --   },
  --     --   -- get fly mode working on strings: https://github.com/altermo/ultimate-autopair.nvim/issues/17
  --     --   fly = {
  --     --     nofilter = true,
  --     --     {[()]}
  --     --   },
  --     -- },
  --     config_internal_pairs = {
  --       { '"', '"', fly = true },
  --       { "'", "'", fly = true },
  --     },
  --     keys = {
  --       {
  --         "<leader>ua",
  --         function()
  --           local notify = require("astronvim.utils").notify
  --           local function bool2str(bool) return bool and "on" or "off" end
  --           local ok, ultimate_autopair = pcall(require, "ultimate-autopair")
  --           if ok then
  --             ultimate_autopair.toggle()
  --             vim.g.ultimate_autopair_enabled = require("ultimate-autopair.core").disable
  --             notify(string.format("ultimate-autopair %s", bool2str(not vim.g.ultimate_autopair_enabled)))
  --           else
  --             notify "ultimate-autopair not available"
  --           end
  --         end,
  --         desc = "Toggle ultimate-autopair",
  --       },
  --     },
  --     tabout = {
  --       enable = true,
  --       map = "<C-A-tab>",
  --       {[]}
  --     },
  --   },
  -- },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
}
