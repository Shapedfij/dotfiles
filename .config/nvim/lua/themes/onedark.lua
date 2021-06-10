vim.g.onedark_sidebars = {"qf", "vista_kind", "terminal", "packer"}
vim.g.onedark_colors = {
  bg_highlight = "#2c313a"
}

-- Load the colorscheme
vim.cmd [[colorscheme onedark]]

-- Colors
local bg = "#282C34"

-- Theme base
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=" .. bg)

-- Nvimtree colors
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=#21252B")
