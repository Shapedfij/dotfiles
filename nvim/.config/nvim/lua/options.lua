-- Leader key
vim.g.mapleader = ' '

-- Block cursor always
vim.cmd([[set guicursor=i:block]])

-- Spell Checker
vim.cmd([[set spell]])

-- quicker update
vim.opt.updatetime = 500

-- Highlight Yank
local au = require('au')
au.TextYankPost = function()
  vim.highlight.on_yank({ higroup = 'Search', timeout = 120 })
end

-- statusline
-- %<                                             trim from here
-- %{fugitive#head()}                             name of the current branch (needs fugitive.vim)
-- %f                                             path+filename
-- %m                                             check modifi{ed,able}
-- %r                                             check readonly
-- %w                                             check preview window
-- %=                                             left/right separator
-- %l/%L,%c                                       rownumber/total,colnumber
-- %{&fileencoding?&fileencoding:&encoding}       file encoding
vim.opt.statusline = '  %< %{fugitive#head()}  %f %m %r %w %= Ln %l, Col %c  %{&fileencoding?&fileencoding:&encoding}  '

-- syntax highlighting
vim.opt.termguicolors = true
vim.g.t_Co = 256
vim.g.syntax_on = true

vim.opt.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.opt.pumheight = 10 -- Makes popup menu smaller

vim.opt.fileencoding = 'utf-8' -- The encoding written to file
vim.opt.cmdheight = 1 -- Less space for displaying messages

vim.opt.conceallevel = 0 -- So that I can see `` in markdown files

-- 4 character wide tab for indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.autoindent = true
vim.g.smartintend = true

-- don't wrap lines
vim.opt.wrap = false

-- search options
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.wrapscan = true

-- line default relative number
vim.opt.number = true
vim.opt.relativenumber = true

vim.wo.cursorline = true -- Enable highlighting of the current line
vim.wo.signcolumn = 'yes' -- Always show the signcolumn, otherwise it would shift the text each time

vim.wo.scrolloff = 10
vim.wo.sidescrolloff = 30

vim.o.backup = false -- This is recommended by coc
vim.o.swapfile = false
vim.o.writebackup = false -- This is recommended by coc

-- whitespace characters
vim.wo.list = true
vim.opt.listchars = 'tab:→ ,trail:•,extends:»,precedes:«'

-- copy and paste with OS clipboard
vim.opt.clipboard = 'unnamedplus'

-- Error formate
vim.bo.errorformat = [[
    %E%f:%l:%c: %trror: %m,%-Z%p^,%+C%.%#
    %D%*a: Entering directory [`']%f
    %X%*a: Leaving directory [`']%f
    %-G%.%#
]]
