-- Configuration for nvim-tree
require('nvim-tree').setup{
    view = {
        mappings = {
            list = {
                { key = '-', action = '' },
                { key = '~', action = 'dir_up' },
            }
        }
    }
}
