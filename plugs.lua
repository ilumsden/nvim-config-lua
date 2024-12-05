local fn = vim.fn

-- Automatically install packer
local function bootstrap_pckr()
    local install_path = fn.stdpath('data')..'/pckr/pckr.nvim'

    if not (vim.uv or vim.loop).fs_stat(install_path) then
        fn.system({
            'git',
            'clone',
            '--filter=blob:none',
            'https://github.com/lewis6991/pckr.nvim',
            install_path
        })
    end

    vim.opt.rtp:prepend(install_path)
end

bootstrap_pckr()

-- Autocommand that reloads neovim whenever you save the plugs.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugs.lua source <afile> | Pckr sync
    autocmd BufWritePost user_plugs.lua source <afile> | Pckr sync
  augroup end
]])

-- Autocommand that reloads neovim whenever you save the user_plugs.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost user_plugs.lua source <afile> | Pckr sync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, pckr = pcall(require, "pckr")
if not status_ok then
  return
end

pckr.add{
    {
        'nvim-tree/nvim-tree.lua',
        requires = 'nvim-tree/nvim-web-devicons'
    };
    't9md/vim-choosewin';
    {
        'nvim-lualine/lualine.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    };
    'neovim/nvim-lspconfig';
    {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({with_sync = true})() end
    };
    'rmagatti/goto-preview';
    'nvim-lua/plenary.nvim';
    'mfussenegger/nvim-dap';
    'simrat39/rust-tools.nvim';
    'hrsh7th/cmp-nvim-lsp';
    'hrsh7th/cmp-buffer';
    'hrsh7th/cmp-path';
    'hrsh7th/cmp-cmdline';
    'hrsh7th/nvim-cmp';
    'hrsh7th/cmp-vsnip';
    'hrsh7th/vim-vsnip';
    'EdenEast/nightfox.nvim';
    'windwp/nvim-autopairs';
    {
        'williamboman/mason.nvim',
        run = ':MasonUpdate'
    };
    "williamboman/mason-lspconfig.nvim";
}
