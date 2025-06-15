require("nvim-tree").setup({
  view = {
    width = 35,
    side = "left",
    relativenumber = true,
  },
  filters = {
    dotfiles = false,
    custom = { ".DS_Store" },
  },
  git = {
    enable = true,
    ignore = false,
  },
})
