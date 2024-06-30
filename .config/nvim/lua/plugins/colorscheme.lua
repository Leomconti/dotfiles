return {
  -- add tokyonight theme
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      colorscheme = "night",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
