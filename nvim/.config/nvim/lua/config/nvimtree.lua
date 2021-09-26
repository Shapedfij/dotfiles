vim.g.nvim_tree_width = 26
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_quit_on_open = 1

vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_ignore = {".git"}
vim.g.nvim_tree_root_folder_modifier = ":p:~"
vim.g.nvim_tree_special_files = {}

require("nvim-tree").setup({tab_open = true, auto_close = false})

local map = require("util").map
map("n", "<C-b>", ":lua require('nvim-tree').toggle()<CR>", {noremap = true, silent = true})
