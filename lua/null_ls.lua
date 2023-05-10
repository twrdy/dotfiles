local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- rust
  b.formatting.rustfmt,

  -- python
  b.diagnostics.flake8.with { extra_args = { "--max-line-length", "120" } },
  -- b.formatting.black.with { extra_args = { "--line-length", "120" } },
  -- b.formatting.yapf.with { extra_args = { "--style={based_on_style: google, column_limit: 120, indent_width: 4}"} },
  b.formatting.yapf.with { extra_args = { "--style={based_on_style: google, column_limit: 120}"} },

  -- cpp
  b.diagnostics.cpplint,
  b.formatting.clang_format,

  -- latex
  b.diagnostics.vale,
  b.formatting.latexindent,

  -- haskell
  b.formatting.stylish_haskell,

  -- xml
  b.formatting.xmlformat,

  -- js 
  b.formatting.prettier;
}

null_ls.setup {
  debug = true,
  sources = sources,
}
