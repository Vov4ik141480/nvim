vim.opt.termguicolors = true
local schemes = {
  ["tokyonight"] = "tokyonight-night",
  ["gruvbox"] = "gruvbox",
  ["catppuccin"] = "catppuccin-mocha",
}
local theme = schemes[vim.env.NVIM_THEME or "tokyonight"]
require("catppuccin").setup()
vim.cmd("colorscheme catppuccin")

