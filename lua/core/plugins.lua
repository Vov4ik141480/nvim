local lazy = require("lazy")
lazy.setup({
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",
  "nvim-telescope/telescope.nvim",
  "nvim-lua/plenary.nvim",
  "lewis6991/gitsigns.nvim",
  "akinsho/bufferline.nvim",
  "akinsho/toggleterm.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      "nvimtools/none-ls-extras.nvim",
    },
  },
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "glepnir/lspsaga.nvim",
  -- "folke/which-key.nvim",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  -- Доп. UI:
  "nvim-lualine/lualine.nvim",
  "lukas-reineke/indent-blankline.nvim",
  "windwp/nvim-ts-autotag",  -- авто-теги в HTML/JSX
  "nvim-lualine/lualine.nvim",
  -- Цветовые схемы:
  "folke/tokyonight.nvim", "ellisonleao/gruvbox.nvim", "catppuccin/nvim",
})
