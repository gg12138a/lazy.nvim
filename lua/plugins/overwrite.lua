-- overwrite LazyVim builtins.

local Util = require("lazyvim.util")

return {

    -- # overwrite keymaps:
    -- 
    -- set `<leader>/` to comment current line.
    -- set `<leader>s/` to grep in root dir(the builtin keymap was `<leader>/`).
    {
        "echasnovski/mini.comment",
        opts = {
            mappings = {
              comment = "gc",
      
              -- Toggle comment on current line
              comment_line = "<leader>/",
      
              -- Define 'comment' textobject (like `dgc` - delete whole comment block)
              textobject = "gc",
            },
          },
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            { "<leader>s/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
        }
    }
}
