-- NEOVIM CONFIG

-- Vim stuff
local o = vim.o
local bo = vim.bo
local wo = vim.wo
o.termguicolors = true
o.syntax = 'on'
o.errorbells = false
o.smartcase = true
o.showmode = false
bo.swapfile = false
o.backup = false
o.undodir = vim.fn.stdpath('config') .. '/undodir'
o.undofile = true
o.incsearch = true
o.hidden = true
o.mouse = "a"
bo.autoindent = true
bo.smartindent = true
vim.opt.clipboard = 'unnamedplus'
vim.opt["guicursor"] = ""

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
wo.number = true
wo.relativenumber = true
wo.signcolumn = 'yes'
wo.wrap = false

-- Get key mapping
require "key_mapping"

-- Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- Mason setup
require("mason").setup()
require("mason-lspconfig").setup({})

-- Treesitter setup
local configs = require 'nvim-treesitter.configs'
configs.setup {
  highlight = {
    enable = true,
  }
}

-- Setup colorscheme
require("colorscheme")

-- Setup lsp
require("lsp")

-- Setup Null-ls
require("null_ls")

require('nvim_comment').setup()

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
  virtual_text = {
    -- source = "always",  -- Or "if_many"
    prefix = '●', -- Could be '■', '▎', 'x'
  },
  severity_sort = true,
  float = {
    source = "always", -- Or "if_many"
    border = "rounded"
  },
})


require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = '|',
    -- component_separators = ' ',
    section_separators = { left = '', right = '' },
    disabled_filetypes = {
      statusline = {
        "NvimTree"
      },
    },
    always_divide_middle = true,
    globalstatus = false,
  },

  sections = {
    lualine_a = {'mode'},
    lualine_b = {'diff', 'diagnostics'},
    lualine_c = {
      {
        'branch',
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },

  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

-- indentline
vim.opt.list = true

-- blamer
vim.g.blamer_enabled = 1

require('hlargs').setup()

require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },
  view = {
    width = 50,
    adaptive_size = false,
  },
})
