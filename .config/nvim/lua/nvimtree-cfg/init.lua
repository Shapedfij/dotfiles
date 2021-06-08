vim.g.nvim_tree_width = 26
-- vim.g.nvim_tree_side = "right"
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_auto_close = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}
vim.g.nvim_tree_ignore = {
  ".git"
}

vim.g.nvim_tree_icons = {
  git = {
    unstaged = ""
  }
}

require("nvim-tree.events").on_nvim_tree_ready(
  function()
    vim.cmd("NvimTreeRefresh")
  end
)
local opts = {noremap = true, silent = true}
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeToggle<CR>", opts)