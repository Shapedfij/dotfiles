" Space as leader
nnoremap <SPACE> <Nop>
let mapleader=" " 

" Moving lines with 'Alt' key
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Windows buffer
nnoremap <leader><Esc> :bdelete<CR>
nnoremap <leader>] :bnext<CR>
nnoremap <leader>[ :bprev<CR>

" Windows navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Quickfix list
nnoremap <c-]> :cnext<CR>
nnoremap <c-[> :cprev<CR>
nnoremap <c-\> :copen<CR>
