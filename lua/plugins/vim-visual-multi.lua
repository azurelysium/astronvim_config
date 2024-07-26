return {
  {
    "mg979/vim-visual-multi",
    lazy = false,
    init = function()
      vim.g.VM_default_mappings = 0
      vim.g.VM_maps = {
        ["Find Under"] = "<C-x>",
        ["Find Subword Under"] = "<C-x>",
        -- Add other custom mappings here
      }
    end,
  },
}
