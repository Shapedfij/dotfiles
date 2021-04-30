set nocompatible              " be iMproved, required
filetype off                  " required

" Specify the virtual environment path for black
let g:black_virtualenv='~/.local/share/nvim/black'

" Run on save
autocmd BufWritePre *.py execute ':Black'
