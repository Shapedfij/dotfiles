-- Gruvbox
vim.cmd([[colorscheme gruvbox]])
vim.o.background = "dark" -- or "light" for light mode
vim.g.gruvbox_transparent_bg = 1

-- Keyword bold
vim.g.ci_dark_enable_bold = 1

-- Transparent background
vim.cmd("highlight Normal     ctermbg=NONE guibg=NONE")
vim.cmd("highlight LineNr     ctermbg=NONE guibg=NONE")
vim.cmd("highlight SignColumn ctermbg=NONE guibg=NONE")

vim.cmd("highlight HighlightedyankRegion cterm=reverse gui=reverse")

-- plugins colorizer
require "colorizer".setup()
