function UndoCommit()
    :G reset --soft HEAD~1
endfunction

" Conflict
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
