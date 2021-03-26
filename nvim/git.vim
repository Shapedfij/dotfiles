function UndoCommit()
    :G reset --soft HEAD~1
endfunction

" Conflict
" NOTE: dv in git status to get conflicts
nmap <leader>gh :diffget //2<CR>
nmap <leader>gl :diffget //3<CR>

