-- One Vim
require("colorbuddy").colorscheme("one-nvim")

-- Colors
local fg = "#9da5b3"
local fg_dark = "#3b4048"
local bg = "#282C34"
local bg_dark = "#21252B"

local blue = "#61AFEF"
local blue_bg = "#344559"

local red = "#E06C75"
local red_bg = "#4D3840"

local yellow = "#E5C07B"
local yellow_bg = "#4E4942"

local green = "#98C379"
local green_bg = "#3E4941"

-- minimal split
vim.g.foldcolum = 2
vim.cmd("autocmd Colorscheme * highlight EndOfBuffer guifg=" .. bg)
vim.cmd("autocmd Colorscheme * highlight foldcolumn guifg=" .. bg)
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=" .. bg)

-- nvim tree colors
vim.cmd("autocmd Colorscheme * highlight NvimTreeIndentMarker guifg=" .. fg_dark)
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guifg=" .. fg .. " guibg=" .. bg_dark)
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderName guifg=" .. fg)
vim.cmd("autocmd Colorscheme * highlight NvimTreeRootFolder guifg=" .. fg)
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderIcon guifg=" .. fg)
vim.cmd("autocmd Colorscheme * highlight NvimTreeOpenedFolderName guifg=" .. fg)
vim.cmd("autocmd Colorscheme * highlight NvimTreeVertSplit guifg=" .. bg)
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=" .. bg_dark)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitStaged  guifg=" .. blue)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitRenamed  guifg=" .. yellow)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitMerge  guifg=" .. green)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitDirty  guifg=" .. yellow)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitNew  guifg=" .. green)
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitDeleted  guifg=" .. red)

-- lsp diagnostics signs colors
vim.cmd("autocmd Colorscheme * highlight LspDiagnosticsLineNrError guifg=" .. red .. " guibg=" .. red_bg .. " gui=bold")
vim.cmd(
  "autocmd Colorscheme * highlight LspDiagnosticsLineNrWarning guifg=" ..
    yellow .. " guibg=" .. yellow_bg .. " gui=bold"
)

vim.cmd(
  "autocmd Colorscheme * highlight LspDiagnosticsLineNrInformation guifg=" ..
    green .. " guibg=" .. green_bg .. " gui=bold"
)
vim.cmd(
  "autocmd Colorscheme * highlight LspDiagnosticsLineNrHint guifg=" .. blue .. " guibg=" .. blue_bg .. " gui=bold"
)
