call plug#begin('~/.config/nvim/autoload/plugged')

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'

" Git
Plug 'tpope/vim-fugitive'

" Python
Plug 'nvie/vim-flake8'
Plug 'fisadev/vim-isort'
Plug 'psf/black'

" Formater
Plug 'rhysd/vim-clang-format'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Utils
Plug 'tpope/vim-surround'
Plug 'machakann/vim-highlightedyank'
Plug 'kyazdani42/nvim-web-devicons'

" StatusBar | Filetree
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-tree.lua'

" COC | Tree Sitter
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()
