-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
local dap = require "dap"

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    ["<leader>bb"] = {
      ":Telescope buffers sort_lastused=true sort_mru=true<cr>",
      desc = "List buffers",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    --
    ["<leader>c"] = { "<Nop>", desc = "" },
    ["<leader>gnt"] = { "<Nop>", desc = "" },
    ["<leader>gg"] = { ":Neogit<cr>", desc = "Open Neogit Tab Page" },
    -- quick and dirty colemak
    n = "j",
    ["<A-m>"] = { "<C-w>h" },
    ["<A-n>"] = { "<C-w>j" },
    ["<A-e>"] = { "<C-w>k" },
    ["<A-i>"] = { "<C-w>l" },
    m = "h",
    e = "k",
    f = "w",
    i = "l",
    j = "t",
    l = "u",
    t = "f",
    u = "i",
    ["<leader>w"] = { name = "Windows" },
    ["<leader>ww"] = {
      function()
        local window = require("window-picker").pick_window()
        vim.api.nvim_set_current_win(window or 0)
      end,
      desc = "Pick window",
    },
    ["<leader>wc"] = { ":close<cr>", desc = "Close window" },
    ["<leader>ws"] = { ":split<cr>", desc = "Split" },
    ["<leader>wv"] = { ":vsplit<cr>", desc = "Vertical split" },
    ["<leader><leader>"] = {
      function() require("telescope.builtin").git_files() end,
    },
    ["<leader>."] = {
      function() require("telescope.builtin").find_files { ["no_ignore"] = true, ["hidden"] = true } end,
    },
    ["<leader>f"] = { name = "Files" }, -- todo: figure out how to change "Find" to "Search" -.-
    ["<leader>fs"] = { ":write<cr>", desc = "Save" },
    ["<leader>dn"] = { function() dap.step_over() end, desc = "Step over" },
    ["<leader>di"] = { function() dap.step_into() end, desc = "Step into" },
    ["<leader>do"] = { function() dap.step_out() end, desc = "Step out" },
    ["<leader>dc"] = { function() dap.continue() end, desc = "Continue" },
    ["gD"] = { function() vim.lsp.buf.type_definition() end, desc = "Go to type definition" },
    ["gp"] = { name = "Preview" },
    ["gpd"] = { function() require("goto-preview").goto_preview_definition() end, desc = "Definition" },
    ["gpt"] = { function() require("goto-preview").goto_preview_type_definition() end, desc = "Type definition" },
    ["gpi"] = { function() require("goto-preview").goto_preview_implementation() end, desc = "Implementation" },
    ["gpD"] = { function() require("goto-preview").goto_preview_declaration() end, desc = "Declaration" },
    ["gP"] = { function() require("goto-preview").close_all_win() end, desc = "Close preview windows" },
    ["gpr"] = { function() require("goto-preview").goto_preview_references() end, desc = "References" },
    ["<left>"] = { "<C-w><", noremap = true },
    ["<right>"] = { "<C-w>>", noremap = true },
    ["<up>"] = { "<C-w>-", noremap = true },
    ["<down>"] = { "<C-w>+", noremap = true },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    -- quick and dirty colemak
    n = "j",
    m = "h",
    e = "k",
    f = "w",
    i = "l",
    l = "u",
    u = "i",
  },
}
