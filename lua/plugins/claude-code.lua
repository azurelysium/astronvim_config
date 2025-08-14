return {
  {
    "greggh/claude-code.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    -- config = function()
    --   require("claude-code").setup()
    -- end

    config = function()
      require("claude-code").setup({
        window = {
          position = "float",
          float = {
            width = "90%",     -- Take up 90% of the editor width
            height = "90%",    -- Take up 90% of the editor height
            row = "center",    -- Center vertically
            col = "center",    -- Center horizontally
            relative = "editor",
            border = "double", -- Use double border style
          },
        },
        keymaps = {
          toggle = {
            normal = "<C-a>",          -- Normal mode keymap for toggling Claude Code, false to disable
            terminal = "<C-q>",        -- Terminal mode keymap for toggling Claude Code, false to disable
            variants = {
              continue = "<leader>cC", -- Normal mode keymap for Claude Code with continue flag
              verbose = "<leader>cV",  -- Normal mode keymap for Claude Code with verbose flag
            },
          },
          window_navigation = true, -- Enable window navigation keymaps (<C-h/j/k/l>)
          scrolling = true,         -- Enable scrolling keymaps (<C-f/b>) for page up/down
        },
      })
    end
  },
}
