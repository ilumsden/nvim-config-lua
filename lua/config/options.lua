-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Sets basic Nvim configuration
vim.opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- "unnamedplus" -- Allows clipboard to be shared with other apps
-- IDE-like auto-complete menu
vim.opt.completeopt = { "noinsert", "menuone", "noselect" }
vim.opt.hidden = true
vim.opt.inccommand = "split"
vim.opt.mouse = "a" -- Allows use of mouse in editor
vim.opt.number = true -- Enables line numbers
-- opt.relativenumber = true
vim.opt.splitbelow = true -- 'split' splits below
vim.opt.splitright = true -- 'vsplit' splits right
vim.opt.title = true -- Shows file titles
vim.opt.wildmenu = true -- More advanced auto-complete menu
vim.opt.wildmode = { "list", "longest" } -- Advanced auto-complete menu settigns
vim.opt.expandtab = true -- Converts tabs to spaces
vim.opt.shiftwidth = 4 -- Indentation is 4 spaces
vim.opt.tabstop = 4 -- Tab is 4 spaces
vim.opt.autoread = true -- Automatically re-read file when changed outside Nvim
vim.opt.cursorline = true -- Highlight current line
vim.opt.encoding = "utf-8" -- Use UTF-8 for encoding
vim.opt.ignorecase = true -- Ignore case in search patterns
-- Override 'ignorecase' only when search pattern includes
-- upper case characters
vim.opt.smartcase = true
-- Shows hidden characters as follows:
--   * Tabs: '>'
--   * Trailing Spaces: '-'
--   * Non-Breakable Space Chars: '+'
vim.opt.list = true
vim.opt.maxmempattern = 1000 -- Sets max amount of memory for pattern matching
vim.opt.scrolloff = 4 -- Min number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 -- Min number of columns to keep left and right of cursor
vim.opt.shiftround = true -- Rounds indents to multiple of 'shiftwidth'
vim.opt.smartindent = true -- Enable smart auto-indenting
vim.opt.termguicolors = true -- Enables 24-bit RGB colors
vim.opt.wrap = false -- Disable text wrapping
vim.opt.hlsearch = true -- Disable highlighting of old search results
vim.opt.syntax = "ON" -- Enable syntax highlighting

vim.g.snacks_animate = false
