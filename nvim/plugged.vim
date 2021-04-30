call plug#begin('~/.config/nvim/autoload/plugged')

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one'

" Git Integration
Plug 'tpope/vim-fugitive'

" Python linter
Plug 'nvie/vim-flake8'

" Python formatter
Plug 'fisadev/vim-isort'
Plug 'psf/black'

" C Formatter
Plug 'rhysd/vim-clang-format'

" Markdown
Plug 'mzlogin/vim-markdown-toc'

" Yank
Plug 'machakann/vim-highlightedyank'

" lauline
Plug 'hoob3rt/lualine.nvim'

" Filetree
Plug 'kyazdani42/nvim-tree.lua'

" Icons
Plug 'kyazdani42/nvim-web-devicons'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Prettier (All Language)
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Easy surround
Plug 'tpope/vim-surround'

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim' 
Plug 'tjdevries/nlua.nvim'
Plug 'tjdevries/lsp_extensions.nvim'

" Neovim Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()
