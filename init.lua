-- Set leaders
vim.g.mapleader = ';'
vim.g.localleader = ';;'

-- Set packpath to point to where Packer is installed
local packer_path = vim.fn.stdpath('config') .. '/site'
local config_path = vim.fn.stdpath('config')
local config_files = config_path .. '/?.lua'
vim.o.packpath = vim.o.packpath .. ',' .. packer_path .. ',' .. config_path

-- Set package.path so the "require" statements below work
package.path = package.path .. ';' .. config_files

-- Split rest of config across multiple files
require('vars')
require('opts')
require('plugs')
require('user_plugs')
require('map')
-- require('autocmd')
