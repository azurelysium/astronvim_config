if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "bash",
      "yaml",
      "json",
      "python",
      "rust",
      "kotlin",
      "svelte",
      "javascript",
      "typescript",
      "flatbuffers",
      -- add more arguments for adding more treesitter parsers
    },
    highlight = {
      enable = true,
    },
  },
}
