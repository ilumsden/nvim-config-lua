local opt = vim.opt

-- Sets basic Nvim configuration
opt.clipboard = 'unnamedplus' -- Allows clipboard to be shared with other apps
-- IDE-like auto-complete menu
opt.completeopt = {'noinsert', 'menuone', 'noselect'}
opt.hidden = true
opt.inccommand = 'split'
opt.mouse = 'a' -- Allows use of mouse in editor
opt.number = true -- Enables line numbers
-- opt.relativenumber = true
opt.splitbelow = true -- 'split' splits below
opt.splitright = true -- 'vsplit' splits right
opt.title = true -- Shows file titles
opt.wildmenu = true -- More advanced auto-complete menu
opt.wildmode = {"list", "longest"} -- Advanced auto-complete menu settigns
opt.expandtab = true -- Converts tabs to spaces
opt.shiftwidth = 4 -- Indentation is 4 spaces
opt.tabstop = 4 -- Tab is 4 spaces
opt.autoread = true -- Automatically re-read file when changed outside Nvim
opt.cursorline = true -- Highlight current line
opt.encoding = 'utf-8' -- Use UTF-8 for encoding
opt.ignorecase = true -- Ignore case in search patterns
-- Override 'ignorecase' only when search pattern includes 
-- upper case characters
opt.smartcase = true
-- Shows hidden characters as follows:
--   * Tabs: '>'
--   * Trailing Spaces: '-'
--   * Non-Breakable Space Chars: '+'
opt.list = true
opt.maxmempattern = 1000 -- Sets max amount of memory for pattern matching
opt.scrolloff = 4 -- Min number of lines to keep above and below the cursor
opt.sidescrolloff = 8 -- Min number of columns to keep left and right of cursor
opt.shiftround = true -- Rounds indents to multiple of 'shiftwidth'
opt.smartindent = true -- Enable smart auto-indenting
opt.termguicolors = true -- Enables 24-bit RGB colors
opt.wrap = false -- Disable text wrapping
opt.hlsearch = true -- Disable highlighting of old search results
opt.syntax = "ON" -- Enable syntax highlighting
