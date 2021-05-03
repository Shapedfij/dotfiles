local noremap = function(v, lhs, rhs)
  vim.api.nvim_set_keymap(v, lhs, rhs, {noremap = true})
end

-- Leader key
noremap("n", "<Space>", "<Nop>")
vim.g.mapleader = " "

-- Line transform using 'Alt'
noremap("n", "<A-j>", ":m .+1<CR>==")
noremap("n", "<A-k>", ":m .-2<CR>==")
noremap("i", "<A-j>", "<Esc>:m .+1<CR>==gi")
noremap("i", "<A-k>", "<Esc>:m .-2<CR>==gi")
noremap("v", "<A-j>", ":m '>+1<CR>gv=gv")
noremap("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- Tab navigation
noremap("n", "<Leader><Esc>", ":bdelete<CR>")
noremap("n", "<Leader>]", ":bnext<CR>")
noremap("n", "<Leader>[", ":bprev<CR>")

-- Window navigation
noremap("n", "<Leader>h", ":wincmd h<CR>")
noremap("n", "<Leader>j", ":wincmd j<CR>")
noremap("n", "<Leader>k", ":wincmd k<CR>")
noremap("n", "<Leader>l", ":wincmd l<CR>")

-- Quickfix list
noremap("n", "<C-]>", ":cnext<CR>")
noremap("n", "<C-[>", ":cprev<CR>")
noremap("n", "<C-\\>", ":copen<CR>")

-- Clear search result
noremap("n", "<C-n>", ":set hlsearch!<CR>")
