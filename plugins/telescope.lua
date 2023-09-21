return { 
   "nvim-telescope/telescope.nvim", 
   opts = function(_, opts) 
     local actions = require "telescope.actions" 

     opts.defaults.mappings.i["<Esc>"] = actions.close
     opts.defaults.mappings.i["<C-g>"] = actions.close
     opts.defaults.mappings.i["<C-j>"] = actions.move_selection_next
     opts.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
   end 
 }
