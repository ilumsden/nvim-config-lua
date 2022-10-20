local map = vim.api.nvim_set_keymap

-- Basic mappings that I copied from my old Vimscript config
map('', 'tt', ':tabnew', {})
map('', '<M-Right>', ':tabn<CR>', {})
map('i', '<M-Right>', '<ESC>:tabn<CR>', {})
map('', '<M-Left>', ':tabp<CR>', {})
map('i', '<M-Left>', '<ESC>:tabp<CR>', {})

-- Mappings for nvim-tree
map('n', 'to', [[:NvimTreeToggle]], {})
map('n', 'tf', [[:NvimTreeFocus]], {})
map('n', 'ftf', [[:NvimTreeFindFile]], {})
map('n', 'tc', [[:NvimTreeCollapse]], {})

-- Mappings for vim-choosewin
map('n', '-', '<Plug>(choosewin)', {})

-- Mappings for LSP
local opts = { noremap=true, silent=true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Mappings for goto-preview
map('n', 'gpd', "<cmd>lua require('goto-preview').goto_preview_definition()<CR>", {noremap = true})
map('n', 'gpt', "<cmd>lua require('goto-preview').goto_preview_type_definition()<CR>", {noremap = true})
map('n', 'gpi', "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>", {noremap = true})
map('n', 'gpc', "<cmd>lua require('goto-preview').close_all_win()<CR>", {noremap = true})
