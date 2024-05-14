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
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    -- My custom mappings
    ["<C-g>"] = { "<esc>" },
    ["<C-w>z"] = { ":tabnew %<cr>" },
    ["<leader>r"] = { ":AstroReload<cr>" },
    ["<leader>R"] = { ":e<cr>" },
    ["<leader><Tab>"] = { ":b#<cr>" },
    ["<PageUp>"] = { ":bprevious<cr>" },
    ["<PageDown>"] = { ":bnext<cr>" },
    ["<leader>/"] = { ":Telescope current_buffer_fuzzy_find<cr>" },
    ["<leader>%"] = {
      function()
        require("search-replace.single-buffer").open()
      end,
    },
    ["<leader>O"] = { ":Neotree reveal<cr>" },
    ["<leader>fB"] = { ":Telescope file_browser path=%:p:h select_buffer=true<cr>" },
    ["<leader><Space>"] = { ":CopilotChatToggle<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    -- My custom mappings
    ["<C-g>"] = { "<esc>" },
    ["<C-h>"] = { "copilot#Accept('<CR>')", noremap = true, silent = true, expr = true, replace_keycodes = false },
    ["<C-j>"] = { "copilot#Next()", noremap = true, silent = true, expr = true },
    ["<C-k>"] = { "copilot#Previous()", noremap = true, silent = true, expr = true },
  },
  v = {
    -- My custom mappings
    ["%"] = {
      function()
        require("search-replace.visual-multitype").within()
      end,
    },
    ["<leader><Space>"] = { ":CopilotChat " },
  }
}
