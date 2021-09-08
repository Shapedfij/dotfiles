local map = vim.api.nvim_set_keymap

-- Quickfix list
map("n", "<C-]>", ":cnext<CR>", {noremap = true})
map("n", "<C-[>", ":cprev<CR>", {noremap = true})
map("n", "<C-\\>", ":clist<CR>", {noremap = true})

-- Line transform using 'Alt'
map("n", "<A-j>", ":m .+1<CR>==", {noremap = true})
map("n", "<A-k>", ":m .-2<CR>==", {noremap = true})
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", {noremap = true})
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", {noremap = true})
map("v", "<A-j>", ":m '>+1<CR>gv=gv", {noremap = true})
map("v", "<A-k>", ":m '<-2<CR>gv=gv", {noremap = true})

-- Buffer
map("n", "<Leader><Esc>", ":bd<CR>", {noremap = true})
map("n", "<Leader>]", ":bnext<CR>", {noremap = true})
map("n", "<Leader>[", ":bprev<CR>", {noremap = true})

-- Window navigation
map("n", "<Leader>h", ":wincmd h<CR>", {noremap = true})
map("n", "<Leader>j", ":wincmd j<CR>", {noremap = true})
map("n", "<Leader>k", ":wincmd k<CR>", {noremap = true})
map("n", "<Leader>l", ":wincmd l<CR>", {noremap = true})

-- Clear search result
map("n", "<C-n>", ":set hlsearch!<CR>", {noremap = true})
