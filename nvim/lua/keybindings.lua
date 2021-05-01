-- Leader key
vim.api.nvim_set_keymap("n", "<Space>", "<Nop>", { noremap = true })
vim.g.mapleader = " "

-- Line transform using 'Alt'
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })

-- Tab navigation
vim.api.nvim_set_keymap("n", "<Leader><Esc>", ":bdelete<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>]", ":bnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>[", ":bprev<CR>", { noremap = true })

-- Window navigation
vim.api.nvim_set_keymap("n", "<Leader>h", ":wincmd h<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>j", ":wincmd j<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>k", ":wincmd k<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader>l", ":wincmd l<CR>", { noremap = true })

-- Quickfix list
vim.api.nvim_set_keymap("n", "<C-]>", ":cnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-[>", ":cprev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-\\>", ":copen<CR>", { noremap = true })

-- Clear search result
vim.api.nvim_set_keymap("n", "<C-n>", ":set hlsearch!<CR>", { noremap = true })
