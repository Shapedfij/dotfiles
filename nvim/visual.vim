set nohlsearch
set hidden
set relativenumber
set smartindent
set smartcase
set ignorecase
set nu

" set cmd height to 1
set cmdheight=1

set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

set scrolloff=10
set sidescroll=10

set autoindent
set clipboard=unnamedplus

set nowrap
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch

" set noshowmode
set isfname+=@-@

" Yank Feedback
let g:highlightedyank_highlight_duration = 100
highlight HighlightedyankRegion cterm=reverse gui=reverse

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
if has("termguicolors")     " set true colors
    set t_8f=\[[38;2;%lu;%lu;%lum
    set t_8b=\[[48;2;%lu;%lu;%lum
    set termguicolors
endif

" keywords bolded, disabled(=0) by default
let g:ci_dark_enable_bold = 1

" OneDark
" colorscheme one
" let g:airline_theme='onedark'

" Palenight
" if (has("nvim"))
"   "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
"   let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" endif
" set background=dark
" colorscheme palenight
" let g:airline_theme = "palenight"

" Gruvbox
colorscheme gruvbox
let g:gruvbox_constrast_dark='hard'
let g:gruvbox_invert_tabline = 1
let g:gruvbox_transparent_bg = 1
set background=dark "Setting dark mode
let g:airline_theme='gruvbox'

" Transparent background
highlight Normal     ctermbg=NONE guibg=NONE
highlight LineNr     ctermbg=NONE guibg=NONE
highlight SignColumn ctermbg=NONE guibg=NONE

