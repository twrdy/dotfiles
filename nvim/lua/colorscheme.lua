require("tokyonight").setup({
  style = "night",
  transparent = true,
  terminal_colors = true,
  styles = {
    comments = {},
    keywords = { bold = true },
    functions = {},
    variables = {},
    sidebars = "transparent",
    floats = "transparent",
  },
  sidebars = { "qf", "help" },
  day_brightness = 0.3,
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = true,
})

require("catppuccin").setup({
    flavour = "mocha",
    background = {
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false,
    no_bold = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = { "bold" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
    },
})

vim.cmd [[colorscheme catppuccin]]

vim.cmd([[
    hi DiagnosticVirtualTextError guibg=NONE
    hi DiagnosticVirtualTextWarn guibg=NONE
    hi DiagnosticVirtualTextInfo guibg=NONE
    hi DiagnosticVirtualTextHint guibg=NONE
    hi BufferTabpageFill guibg=NONE
    hi BufferTabpages guibg=NONE
]])

require 'nvim-material-icon'.setup {
  override = {
    zsh = {
      icon = "",
      color = "#428850",
      cterm_color = "65",
      name = "Zsh"
    }
  };
  color_icons = true;
  default = true;
}
