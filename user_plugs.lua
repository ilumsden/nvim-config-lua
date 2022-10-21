-- Configure nvim-tree plugin
require('plug_configs/nvim_tree')
-- Configure lualine plugin
require('plug_configs/lualine')
-- Configure goto-preview plugin
require('plug_configs/goto_preview')
-- Configure rust-tools plugin
require('plug_configs/rust_tools')
-- Configure nvim-treesitter plugin
require('plug_configs/treesitter') -- Needs to be setup before anything
                                   -- that depends on treesitter
-- Configure nvim-cmp plugin (optionally depends
-- on treesitter)
require('plug_configs/cmp')
-- Configure nightfox plugin (optionally depends
-- on treesitter)
require('plug_configs/nightfox')
-- Configure built-in LSP
require('plug_configs/lsp') -- Should always come last
