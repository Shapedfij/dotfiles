set nohlsearch
set hidden
set expandtab
set cursorline
set relativenumber
set smartindent
set smartcase
set ignorecase
set nu

" set autoindent noexpandtab tabstop=4 shiftwidth=4
set autoindent noexpandtab tabstop=2 shiftwidth=2

set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile

set incsearch
set scrolloff=8


" Spell checker
" set spell

" set noshowmode
set isfname+=@-@

" Yank Feedback
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion cterm=reverse gui=reverse
" augroup highlight_yank
" 	autocmd!
" 	autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 40})
" augroup END

" Clear search result
set hlsearch!
nnoremap <c-n> :set hlsearch!<cr>

" Intend Highlighting

set encoding=utf-8
set list
set listchars=tab:→\ ,nbsp:␣,trail:•,extends:⟩,precedes:⟨,space:·

syntax on
set termguicolors
" keywords bolded, disabled(=0) by default
let g:ci_dark_enable_bold = 1


" gruvbox
colorscheme gruvbox
let g:airline_theme='gruvbox'

set clipboard=unnamedplus

