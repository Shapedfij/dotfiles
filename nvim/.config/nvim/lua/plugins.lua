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
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile profile=true
  augroup end
]])

local plugins = function(use)
  -- Packer can manage itself as an optional plugin
  use "wbthomason/packer.nvim"

  -- Startup-time
  use {
    "dstein64/vim-startuptime",
    config = function()
      local map = require("util").map
      map("n", "<Leader>st", ":StartupTime<CR>", {noremap = true})
    end
  }

  -- Native LSP
  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "folke/lua-dev.nvim"

  -- Individual Servers
  use "mattn/efm-langserver"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end
  }
  use "nvim-treesitter/playground"
  use "windwp/nvim-ts-autotag"

  -- Auto Completion
  use "hrsh7th/nvim-compe"
  use "hrsh7th/vim-vsnip"
  use "rafamadriz/friendly-snippets"

  -- Spell Checker
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("config.spellsitter")
    end
  }

  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
    config = function()
      require("config.telescope")
    end,
    event = "VimEnter"
  }

  use {"nvim-telescope/telescope-fzy-native.nvim", requires = "nvim-telescope/telescope.nvim"}

  -- Git
  use {
    "tpope/vim-fugitive",
    config = function()
      require("config.fugitive")
    end
  }
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("config.gitsigns")
    end
  }

  -- Explorer
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("config.nvimtree")
    end
  }

  -- Flutter
  use {"akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim"}
  use "dart-lang/dart-vim-plugin"
  use "Neevash/awesome-flutter-snippets"

  -- ColorScheme:

  use {
    "ful1e5/onedark.nvim",
    -- disable = true,
    config = function()
      require("onedark").setup({msgAreaStyle = "italic", darkFloat = false, darkSidebar = false})
    end
  }
  use {
    "projekt0n/github-nvim-theme",
    disable = true,
    config = function()
      require("github-theme").setup({
        themeStyle = "dark",
        msgAreaStyle = "italic",
        hideInactiveStatusline = true,
        darkFloat = false,
        darkSidebar = false
      })
    end
  }
  use {
    "folke/tokyonight.nvim",
    disable = true,
    config = function()
      vim.cmd [[colorscheme tokyonight]]
    end
  }

  -- Color previewers
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("config.colorizer")
    end
  }

  -- Icons
  use {
    "projekt0n/circles.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"kyazdani42/nvim-tree.lua", opt = true}},
    config = function()
      require("circles").setup({icons = {empty = "", filled = "", lsp_prefix = ""}})
    end
  }

  -- Formatter
  use {
    "mhartington/formatter.nvim",
    config = function()
      require("config.formatter")
    end
  }
  use "andrejlevkovitch/vim-lua-format"
  use {"prettier/vim-prettier", run = "yarn install"}
  use "psf/black"

  -- Misc
  use "dag/vim-fish"
  use "tpope/vim-surround"
  use {
    "terrortylor/nvim-comment",
    config = function()
      require("config.comment")
    end
  }
  use {
    "windwp/nvim-autopairs",
    config = function()
      require("config.autopairs")
    end
  }
end

require("packer").startup({
  plugins,
  config = {
    profile = {enable = true},
    display = {
      open_fn = function()
        return require("packer.util").float({border = "rounded"})
      end,
      prompt_border = "rounded",
      keybindings = { -- Keybindings for the display window
        quit = "q",
        toggle_info = "<CR>",
        diff = "=",
        prompt_revert = "r"
      }
    }
  }
})
