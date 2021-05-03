-- Gruvbox
vim.cmd("colorscheme " .. "gruvbox")

-- Gruvbox dark
vim.g.gruvbox_constrast_dark = "hard"
vim.g.gruvbox_invert_tabline = 1
vim.g.gruvbox_transparent_bg = 1
vim.o.background = "dark"

-- Keyword bold
vim.g.ci_dark_enable_bold = 1

-- Transparent background
vim.cmd("highlight Normal     ctermbg=NONE guibg=NONE")
vim.cmd("highlight LineNr     ctermbg=NONE guibg=NONE")
vim.cmd("highlight SignColumn ctermbg=NONE guibg=NONE")

vim.cmd("highlight HighlightedyankRegion cterm=reverse gui=reverse")
