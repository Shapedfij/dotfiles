
" Custom
lua require("fulies")
nnoremap <leader>vrc :lua require('fulies.telescope').search_dotfiles()<CR>

" Git
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>gc :lua require('telescope.builtin').git_commits()<CR>

" For file search
nnoremap <leader>p :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader><Tab> :lua require('telescope.builtin').buffers()<CR>

" Need 'fd' & 'ripgrep'
" https://github.com/sharkdp/fd
" https://github.com/BurntSushi/ripgrep
nnoremap <leader>pf :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>


