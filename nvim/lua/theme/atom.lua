-- One Vim
require("colorbuddy").colorscheme("one-nvim")

-- Clean up split
vim.g.foldcolum = 2
vim.cmd("autocmd Colorscheme * highlight EndOfBuffer guifg=#282c34")
vim.cmd("autocmd Colorscheme * highlight foldcolumn guifg=#282c34")
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=#282c34")

-- Nvim Tree
vim.cmd("autocmd Colorscheme * highlight NvimTreeIndentMarker guifg=#3b4048")
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guifg=#9da5b3 guibg=#21252B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderName guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeRootFolder guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderIcon guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeVertSplit guifg=#282c34")
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=#21252B")
