return {
  "SmiteshP/nvim-navic",
  "nvim-treesitter/nvim-treesitter",
  "sheerun/vim-polyglot",
  "folke/tokyonight.nvim",
  "neovim/nvim-lspconfig",
  "anott03/nvim-lspinstall",
  "kyazdani42/nvim-web-devicons",
  "nvim-lua/popup.nvim",
  "nvim-lua/plenary.nvim",
  "nvim-lua/telescope.nvim",
  "jremmen/vim-ripgrep",
  "ThePrimeagen/harpoon",
  "nvim-treesitter/nvim-treesitter-context",
  "jose-elias-alvarez/null-ls.nvim",
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  "terrortylor/nvim-comment",
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require('gitsigns').setup()
    end
  },

  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },

  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/nvim-cmp",
  "onsails/lspkind.nvim",

  "lervag/vimtex",

  {
    "nvim-lualine/lualine.nvim",
  },

  "Yazeed1s/minimal.nvim",

  {
    "m-demare/hlargs.nvim",
    dependencies = { 'nvim-treesitter/nvim-treesitter' }
  },

  "DaikyXendo/nvim-material-icon",

  {
    "DaikyXendo/nvim-tree.lua",
    dependencies = {
      'DaikyXendo/nvim-material-icon', -- optional, for file icons
    },
  },

  {
    "utilyre/barbecue.nvim",
    version = "*",
    config = function()
      require("barbecue").setup()
    end,
  },

  { "catppuccin/nvim", as = "catppuccin" },

  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
}
