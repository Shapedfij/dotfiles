-- One Vim
require("colorbuddy").colorscheme("one-nvim")

-- minimal split
vim.g.foldcolum = 2
vim.cmd("autocmd Colorscheme * highlight EndOfBuffer guifg=#272b34")
vim.cmd("autocmd Colorscheme * highlight foldcolumn guifg=#272b34")
vim.cmd("autocmd Colorscheme * highlight VertSplit guifg=#272b34")

-- nvim tree colors
vim.cmd("autocmd Colorscheme * highlight NvimTreeIndentMarker guifg=#3b4048")
vim.cmd("autocmd Colorscheme * highlight NvimTreeNormal guifg=#9da5b3 guibg=#21252B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderName guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeRootFolder guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeFolderIcon guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeOpenedFolderName guifg=#9da5b3")
vim.cmd("autocmd Colorscheme * highlight NvimTreeVertSplit guifg=#272b34")
vim.cmd("autocmd Colorscheme * highlight NvimTreeEndOfBuffer guifg=#21252B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitStaged  guifg=#61AFEF")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitRenamed  guifg=#E5C07B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitMerge  guifg=#E5C07B")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitDirty  guifg=#98C379")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitNew  guifg=#98C379")
vim.cmd("autocmd Colorscheme * highlight NvimTreeGitDeleted  guifg=#E06C75")

-- lsp diagnostics signs colors
vim.cmd("autocmd Colorscheme * highlight LspDiagnosticsLineNrError guifg=#E06C75 guibg=#4D3840")
vim.cmd("autocmd Colorscheme * highlight LspDiagnosticsLineNrWarning guifg=#E5C07B guibg=#4E4942")
vim.cmd("autocmd Colorscheme * highlight LspDiagnosticsLineNrInformation guifg=#98C379 guibg=#3E4941")
vim.cmd("autocmd Colorscheme * highlight LspDiagnosticsLineNrHint guifg=#61AFEF guibg=#344559")
