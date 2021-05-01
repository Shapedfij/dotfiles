vim.cmd('syntax on') -- syntax highlighting
vim.o.termguicolors = true -- set term gui colors most terminals support this
vim.o.t_Co = "256" -- Support 256 colors
vim.o.hidden = true -- Required to keep multiple buffers open multiple buffers
vim.o.pumheight = 10 -- Makes popup menu smaller

vim.o.fileencoding = "utf-8" -- The encoding written to file
vim.o.cmdheight = 1 -- More space for displaying messages
vim.cmd('set colorcolumn=99999') -- fix indentline for now

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.list = true
vim.cmd('set listchars=tab:→\\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:·') 

vim.bo.expandtab = true -- Converts tabs to spaces
vim.bo.smartindent = true -- Makes indenting smart

vim.o.smartcase = true
vim.o.ignorecase = true
vim.o.autoindent = true
vim.o.hlsearch = true
vim.o.incsearch = true

vim.cmd('set nowrap')
vim.wo.number = true -- set numbered lines
vim.wo.relativenumber = true -- set relative number
vim.wo.cursorline = true -- Enable highlighting of the current line
vim.wo.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time

vim.wo.scrolloff = 10
vim.o.sidescroll = 10

vim.o.backup = false -- This is recommended by coc
vim.o.swapfile = false
vim.o.writebackup = false -- This is recommended by coc

vim.o.updatetime = 300 -- Faster completion
vim.o.timeoutlen = 500 -- By default timeoutlen is 1000 ms
vim.o.clipboard = "unnamedplus" -- Copy paste between vim and everything else
