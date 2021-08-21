-- Git
-- NOTE: 'dv' to get conflicts
-- NOTE: Ctrl+w & Ctrl+o to save
vim.api.nvim_set_keymap("n", "<Leader>gh", ":diffget //2<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>gl", ":diffget //3<CR>", {noremap = true})

-- Fugitive
vim.api.nvim_set_keymap("n", "<Leader>gs", ":Gstatus<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>gp", ":G push<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>gl", ":G pull<CR>", {noremap = true})
