vim.g.mapleader = ','
local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    { noremap = true, silent = true }
  )
end

-- Mapping
key_mapper('i', 'kj', '<ESC>')
key_mapper('n', '<leader><space>', ':nohl<CR>')
key_mapper('n', '<c-p>', ':Explore<CR>')

key_mapper('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('v', '<leader>ca', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
key_mapper('n', '<leader>fm', ':lua vim.lsp.buf.format({timeout_ms = 5000})<CR>')

key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files()<CR>')
key_mapper('n', '<leader>fw', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')

key_mapper('n', '<leader>e', ':lua vim.diagnostic.open_float()<CR>')
key_mapper('n', '<leader>q', ':TroubleToggle<CR>')

key_mapper('n', "<space>m", ':lua require("harpoon.ui").toggle_quick_menu()<CR>')
key_mapper('n', "<space>f", ':lua require("harpoon.mark").add_file()<CR>')
key_mapper('n', "<space>h", ':lua require("harpoon.ui").nav_file(1)<CR>')
key_mapper('n', "<space>j", ':lua require("harpoon.ui").nav_file(2)<CR>')
key_mapper('n', "<space>k", ':lua require("harpoon.ui").nav_file(3)<CR>')
key_mapper('n', "<space>l", ':lua require("harpoon.ui").nav_file(4)<CR>')

key_mapper('n', 'H', '^')
key_mapper('v', 'H', '^')
key_mapper('n', 'L', '$')
key_mapper('v', 'L', '$')

key_mapper("n", "n", "nzz")
key_mapper("n", "N", "Nzz")

key_mapper("n", "<leader>/", ":CommentToggle<CR>")
key_mapper("v", "<leader>/", ":CommentToggle<CR>")

key_mapper("x", "<leader>y", ":!black --line-length 120 -q -<CR>")

--latex
key_mapper("n", "<leader>lr", ":VimtexReload<CR>")

--nvim tree
key_mapper("n", "<c-n>", ":NvimTreeToggle<CR>")
