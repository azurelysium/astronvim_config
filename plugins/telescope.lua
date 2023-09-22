return { 
   "nvim-telescope/telescope.nvim", 
   opts = function(_, opts) 
     local actions = require "telescope.actions" 

     opts.defaults.mappings.i["<Esc>"] = actions.close
     opts.defaults.mappings.i["<C-g>"] = actions.close
     opts.defaults.mappings.i["<C-j>"] = actions.move_selection_next
     opts.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
     opts.defaults.mappings.i["<C-a>"] = function(prompt_bufnr) vim.cmd("norm! 0") end
     opts.defaults.mappings.i["<C-e>"] = function(prompt_bufnr) vim.cmd("norm! $") end
   end 
 }
