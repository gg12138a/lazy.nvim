-- overwrite LazyVim builtins.

local Util = require("lazyvim.util")

return {

  -- # overwrite keymaps:
  --
  -- set `<leader>/` to comment current line.
  -- set `<leader>s/` to grep in root dir(the builtin keymap was `<leader>/`).
  {
    "echasnovski/mini.comment",
    priority = 1000,
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
    priority = 1000,
    keys = {
      { "<leader>s/", Util.telescope("live_grep"), desc = "Grep (root dir)" },
    },
  },
  -- always show all files, no files will be hidden.
  {
    "nvim-neo-tree/neo-tree.nvim",
    priority = 1000,
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            -- '.git',
            -- '.DS_Store',
            -- 'thumbs.db',
          },
          never_show = {},
        },
      },
    },
  },
}
