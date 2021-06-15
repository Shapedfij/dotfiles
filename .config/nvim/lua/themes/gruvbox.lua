-- Load the colorscheme
vim.cmd [[colorscheme gruvbox-flat]]

-- Colors
local bg = "#32302f"

-- Theme base
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=" .. bg)

-- Nvimtree colors
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=#282828")
