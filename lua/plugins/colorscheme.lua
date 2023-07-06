return {

    -- add onedark
    { "ful1e5/onedark.nvim" },
  
    -- configure LazyVim to load onedark
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "onedark",
      },
    },
  }