vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_width = 30
vim.g.nvim_tree_disable_netrw = 0 -- "1 by default, disables netrw
vim.g.nvim_tree_auto_close = 0 -- 0 by default, closes the tree when it's the last window
vim.g.nvim_tree_auto_ignore_ft = "startify" -- empty by default, don't auto open tree on specific filetypes.
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_indent_markers = 1

vim.g.nvim_tree_show_icons = {git = 1, folders = 1, files = 1}

vim.api.nvim_set_keymap("n", "<C-t>", ":NvimTreeToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>r", ":NvimTreeRefresh<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>n", ":NvimTreeFindFile<CR>", {noremap = true})
