set nohlsearch
set hidden
set expandtab
set cursorline
set relativenumber
set smartindent
set smartcase
set ignorecase
set nu

set scrolloff=10
set sidescroll=10

set autoindent noexpandtab tabstop=2 shiftwidth=2
set clipboard=unnamedplus

set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch

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

" TreeSitter syntax highlighting
lua require'nvim-treesitter.configs'.setup { highlight = { enable=true } }
syntax on
set termguicolors
" keywords bolded, disabled(=0) by default
let g:ci_dark_enable_bold = 1


" Theme
colorscheme one
let g:airline_theme='one'


