"
" Telescope
"
lua require("nv-telescope")
nnoremap <leader>vrc :lua require('nv-telescope.main').search_dotfiles()<CR>
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" For file search
nnoremap <leader>p :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader><Tab> :lua require('telescope.builtin').buffers()<CR>
" Need 'fd' & 'ripgrep'
" https://github.com/sharkdp/fd
" https://github.com/BurntSushi/ripgrep
nnoremap <leader>pf :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>


"
" Lualine
"
lua require("nv-lualine")
