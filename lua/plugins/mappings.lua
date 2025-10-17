return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          -- tables with the `name` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { name = "Buffers" },
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
          ["<leader><Space>"] = { ":CopilotChatToggle<cr>" },

          ["<leader>ss"] = { "<cmd>lua require('spectre').toggle()<CR>", desc = "Toggle Spectre" },
          ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Search current word" },
          ["<leader>sp"] = { "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>", desc = "Search on current file" },

          ["<C-9>"] = { ":bprevious<cr>", desc = "Previous buffer" },
          ["<C-0>"] = { ":bnext<cr>", desc = "Next buffer" },
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
          ["<leader>sw"] = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", desc = "Search current word" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
