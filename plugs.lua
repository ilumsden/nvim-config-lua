local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('config')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugs.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugs.lua source <afile> | PackerSync
  augroup end
]])

-- Autocommand that reloads neovim whenever you save the user_plugs.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost user_plugs.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)
    -- File tree plugin
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    }
   -- Window selector
    use 't9md/vim-choosewin'
    -- Plugin for bottom bar
    use 'feline-nvim/feline.nvim'
    -- Plugin to configure built-in LSP
    use 'neovim/nvim-lspconfig'
    -- Plugin for quick goto's for functions, types, etc.
    use 'rmagatti/goto-preview'
    -- Plugins needed for Rust utilities
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    use 'simrat39/rust-tools.nvim'
    -- Stuff for autocomplete
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    -- Vsnip support for nvim-cmp
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    -- Nightfox Color Scheme
    use 'EdenEast/nightfox.nvim'
    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require('packer').sync()
    end
end)
