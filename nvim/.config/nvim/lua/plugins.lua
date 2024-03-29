local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute('packadd packer.nvim')
end

-- Auto source when there are changes in plugins.lua
local au = require('au')
au.group('PackerGroup', { { 'BufWritePost', 'plugins.lua', 'source <afile> | PackerCompile profile=true' } })

local plugins = function(use)
  use('wbthomason/packer.nvim')
  use({
    'dstein64/vim-startuptime',
    config = function()
      local map = require('util').map
      map('n', '<Leader>st', ':StartupTime<CR>', { noremap = true })
    end,
  })

  --
  -- Notification
  --
  use({
    'rcarriga/nvim-notify',
    config = function()
      require('config.notify')
      vim.notify = require('notify')
    end,
  })

  --
  -- LSP
  --

  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use({
    'williamboman/nvim-lsp-installer',
    config = function()
      require('lsp.setup')
    end,
  })

  --
  -- Auto Completion
  --

  -- Snippets
  use('hrsh7th/cmp-vsnip')
  use('hrsh7th/vim-vsnip')
  use({ 'rafamadriz/friendly-snippets', event = 'InsertCharPre' })

  -- Sources
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-emoji')
  use('hrsh7th/cmp-path')
  use({ 'petertriho/cmp-git', requires = 'nvim-lua/plenary.nvim' })

  use({
    'hrsh7th/nvim-cmp',
    config = function()
      require('config.cmp')
    end,
  })

  --
  -- Flutter LSP tools
  --

  use({
    'akinsho/flutter-tools.nvim',
    ft = { 'dart' },
    after = 'telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require('lsp.tools.flutter')
    end,
  })
  use('dart-lang/dart-vim-plugin')
  use({ 'Neevash/awesome-flutter-snippets', event = 'InsertCharPre' })

  --
  -- Treesitter & Spell Checker
  --

  use({
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require('config.treesitter')
    end,
  })
  use('nvim-treesitter/playground')
  use('windwp/nvim-ts-autotag')
  use({
    'lewis6991/spellsitter.nvim',
    after = 'nvim-treesitter',
    commit = 'd2e280a',
    config = function()
      require('config.spellsitter')
    end,
  })

  --
  -- Auto pair
  --

  use({
    'windwp/nvim-autopairs',
    config = function()
      require('config.autopairs')
    end,
  })

  --
  -- Telescope (Fuzzy Finder)
  --

  use({
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } },
    event = 'VimEnter',
    config = function()
      require('config.telescope')
    end,
  })

  --
  -- Git
  --

  use({
    'tpope/vim-fugitive',
    config = function()
      require('config.fugitive')
    end,
  })
  use({
    'lewis6991/gitsigns.nvim',
    event = 'BufRead',
    config = function()
      require('config.gitsigns')
    end,
  })

  --
  -- ColorScheme
  --

  use('rktjmp/lush.nvim')

  use('ful1e5/onedark.nvim')
  -- use "~/GitHub/ful1e5/onedark.nvim"

  -- use('projekt0n/github-nvim-theme')
  use('~/GitHub/projekt0n/github-nvim-theme')

  use('catppuccin/nvim')
  use({ 'ellisonleao/gruvbox.nvim', requires = { 'rktjmp/lush.nvim' } })

  use('nvim-lualine/lualine.nvim')

  --
  -- Icons
  --

  use({
    'projekt0n/circles.nvim',
    requires = { { 'kyazdani42/nvim-web-devicons' }, { 'kyazdani42/nvim-tree.lua', opt = true } },
    config = function()
      require('circles').setup({ icons = { empty = '', filled = '', lsp_prefix = '' } })
    end,
  })

  --
  -- Code Formatter
  --

  use({
    'mhartington/formatter.nvim',
    config = function()
      require('config.formatter')
    end,
  })

  --
  -- Language syntax highlights
  --

  use('fladson/vim-kitty')
  use('dag/vim-fish')

  --
  -- Misc
  --

  use('tpope/vim-surround')
  use({
    'terrortylor/nvim-comment',
    event = 'BufRead',
    config = function()
      require('config.comment')
    end,
  })
  use({
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('config.nvimtree')
    end,
  })
  use({
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  })
end

require('packer').startup({
  plugins,
  config = {
    profile = { enable = true },
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'rounded' })
      end,
      prompt_border = 'rounded',
      keybindings = { -- Keybindings for the display window
        quit = 'q',
        toggle_info = '<CR>',
        diff = '=',
        prompt_revert = 'r',
      },
    },
  },
})
