-- Configuration for Nightfox
require('nightfox').setup{
    options = {
        styles = {
            comments = 'italic',
            keywords = 'bold'
        }
    },
    modules = {
        cmp = true,
        native_lsp = true,
        treesitter = true,
    }
}
-- vim.cmd('colorscheme nordfox')
vim.cmd('colorscheme nightfox')
-- vim.cmd('colorscheme carbonfox')
