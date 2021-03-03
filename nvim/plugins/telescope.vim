
" Custom
lua require("fulies")
nnoremap <leader>vrc :lua require('fulies.telescope').search_dotfiles()<CR>

" For file search
nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <Leader>p :lua require('telescope.builtin').find_files()<CR>
nnoremap <Leader><Tab> :lua require('telescope.builtin').buffers()<CR>

" Need 'fd' & 'ripgrep'
" https://github.com/sharkdp/fd
" https://github.com/BurntSushi/ripgrep
nnoremap <leader>pf :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>


