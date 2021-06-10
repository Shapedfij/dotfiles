vim.g.onedark_sidebars = {"qf", "vista_kind", "terminal", "packer"}

-- Colors
local colors = {
  bg = "#282C34",
  bg_highlight = "#2c313a"
}

vim.g.onedark_colors = {
  bg_highlight = colors.bg_highlight
}

-- Load the colorscheme
vim.cmd [[colorscheme onedark]]

-- minimal split
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=" .. colors.bg)

-- nvim tree colors
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=#21252B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderName guifg=#9da5b3")
