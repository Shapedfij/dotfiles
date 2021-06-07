-- Gruvbox Flat
vim.g.gruvbox_transparent = true
vim.g.gruvbox_italic_functions = true
vim.g.gruvbox_dark_sidebar = true
vim.g.gruvbox_dark_float = false
vim.g.gruvbox_colors = {hint = "orange"}

vim.cmd [[colorscheme gruvbox-flat]]

-- Transparent background
vim.cmd("highlight Normal     ctermbg=NONE guibg=NONE")
vim.cmd("highlight LineNr     ctermbg=NONE guibg=NONE")
vim.cmd("highlight SignColumn ctermbg=NONE guibg=NONE")

-- plugins colorizer
require "colorizer".setup()
