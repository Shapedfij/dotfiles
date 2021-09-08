-- vim.g.nvim_tree_side = "right"
-- vim.g.nvim_tree_follow = 1
vim.g.nvim_tree_width = 26
vim.g.nvim_tree_git_hl = 1
vim.g.nvim_tree_group_empty = 1
vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_tab_open = 1
vim.g.nvim_tree_quit_on_open = 1
vim.g.nvim_tree_auto_close = 0

vim.g.nvim_tree_special_files = {}
vim.g.nvim_tree_ignore = {".git"}
vim.g.nvim_tree_root_folder_modifier = ":p:~"
vim.g.nvim_tree_special_files = {}

function NvimTreeOSOpen()
  local lib = require "nvim-tree.lib"
  local node = lib.get_node_at_cursor()
  if node then vim.fn.jobstart("open '" .. node.absolute_path .. "' &", {detach = true}) end
end

require("nvim-tree.events").on_nvim_tree_ready(function()
  vim.cmd("NvimTreeRefresh")
end)

local map = require("util").map
map("n", "<C-b>", ":NvimTreeToggle<CR>", {noremap = true, silent = true})
