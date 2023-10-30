-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
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
      ":Telescope buffers<cr>",
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
