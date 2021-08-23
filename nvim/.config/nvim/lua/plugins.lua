local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

-- Auto source when there are changes in plugins.lua
vim.cmd [[autocmd BufWritePost plugins.lua luafile %]]

return require("packer").startup(function(use)
  -- Packer can manage itself as an optional plugin
  use "wbthomason/packer.nvim"

  -- Native LSP
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "mattn/efm-langserver"
  use "folke/lsp-colors.nvim"
  use "windwp/nvim-ts-autotag"
  use "folke/lua-dev.nvim"

  -- Spell Checker
  use "lewis6991/spellsitter.nvim"

  -- Auto Completion
  use "hrsh7th/nvim-compe"
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"

  -- Telescope
  use {"nvim-telescope/telescope.nvim", requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}}}
  use "nvim-telescope/telescope-fzy-native.nvim"

  -- Treesitter
  use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}
  use "nvim-treesitter/playground"

  -- Git
  use "tpope/vim-fugitive"
  use "lewis6991/gitsigns.nvim"

  -- Explorer
  use {"kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons"}

  -- Flutter
  use {"akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim"}
  use "dart-lang/dart-vim-plugin"
  use "Neevash/awesome-flutter-snippets"

  -- ColorScheme
  use {"ful1e5/onedark.nvim", branch = "dev"}
  use {"projekt0n/github-nvim-theme"}
  use "folke/tokyonight.nvim"

  -- Color previewers
  use "norcalli/nvim-colorizer.lua"

  -- Icons
  use {
    "projekt0n/circles.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"kyazdani42/nvim-tree.lua", opt = true}},
    config = function()
      require("circles").setup({
        icons = {
          empty = "",
          -- 
          filled = "",
          lsp_prefix = ""
        }
      })
    end
  }

  -- Status Line
  use {"hoob3rt/lualine.nvim"}
  -- use "romgrk/barbar.nvim"

  -- Formatter
  use "mhartington/formatter.nvim"
  use "andrejlevkovitch/vim-lua-format"
  use {"prettier/vim-prettier", run = "yarn install"}
  use "psf/black"

  -- Misc
  use "dag/vim-fish"
  use "tpope/vim-surround"
  use "terrortylor/nvim-comment"
  use "windwp/nvim-autopairs"
end)
