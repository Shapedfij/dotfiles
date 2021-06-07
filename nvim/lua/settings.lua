vim.cmd("syntax on") -- syntax highlighting
vim.g.termguicolors = true -- set term gui colors most terminals support this
vim.g.t_Co = 256 -- Support 256 colors

vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.o.pumheight = 10 -- Makes popup menu smaller

vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 1 -- More space for displaying messages

vim.o.conceallevel = 0 -- So that I can see `` in markdown files
vim.g.autointend = true
vim.g.smartintend = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4

vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.hlsearch = true
vim.o.incsearch = true

vim.cmd("set nowrap")
vim.wo.number = true -- set numbered lines
vim.wo.relativenumber = true -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

vim.wo.scrolloff = 10
vim.o.sidescroll = 10

vim.o.backup = false -- This is recommended by coc
vim.o.swapfile = false
vim.o.writebackup = false -- This is recommended by coc

vim.wo.list = true
vim.o.listchars = "tab:→ ,trail:•,extends:»,precedes:«"
vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
