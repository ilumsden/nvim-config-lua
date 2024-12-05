-- Configuration for nvim-treesitter
local ts_configs = require('nvim-treesitter.configs')
ts_configs.setup{
    ensure_installed = {
        'bash',
        'bibtex',
        'c',
        'cmake',
        'cpp',
        'css',
        'cuda',
        'gitignore',
        'go',
        'html',
        'javascript',
        'json',
        'json5',
        'llvm',
        'make',
        'meson',
        'python',
        'regex',
        'rust',
        'toml',
        'typescript',
        'vim',
        'yaml'
    },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
