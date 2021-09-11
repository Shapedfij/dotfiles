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
  use "wbthomason/packer.nvim"
  use {
    "dstein64/vim-startuptime",
    config = function()
      local map = require("util").map
      map("n", "<Leader>st", ":StartupTime<CR>", {noremap = true})
    end
  }

  --
  -- LSP
  --

  use "neovim/nvim-lspconfig"
  use "kabouzeid/nvim-lspinstall"
  use "folke/lua-dev.nvim"

  --
  -- LSP tools
  --

  use {
    "akinsho/flutter-tools.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("lsp.tools.flutter")
    end
  }
  use "dart-lang/dart-vim-plugin"
  use "Neevash/awesome-flutter-snippets"

  --
  -- Treesitter & Spell Checker
  --

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("config.treesitter")
    end
  }
  use "nvim-treesitter/playground"
  use "windwp/nvim-ts-autotag"
  use {
    "lewis6991/spellsitter.nvim",
    config = function()
      require("config.spellsitter")
    end
  }

  --
  -- Auto Completion
  --

  use {
    "hrsh7th/nvim-compe",
    event = "InsertEnter",
    config = function()
      require("config.compe")
    end
  }
  use {"hrsh7th/vim-vsnip", event = "InsertEnter"}
  use {"rafamadriz/friendly-snippets", event = "InsertCharPre"}

  --
  -- Telescope
  --

  use {
    "nvim-telescope/telescope.nvim",
    requires = {{"nvim-lua/popup.nvim"}, {"nvim-lua/plenary.nvim"}},
    event = "VimEnter",
    config = function()
      require("config.telescope")
    end
  }
  use {"nvim-telescope/telescope-fzy-native.nvim", requires = "nvim-telescope/telescope.nvim"}

  --
  -- Git
  --

  use {
    "tpope/vim-fugitive",
    config = function()
      require("config.fugitive")
    end
  }
  use {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      require("config.gitsigns")
    end
  }

  --
  -- ColorScheme
  --

  use {
    "ful1e5/onedark.nvim",
    -- "~/GitHub/ful1e5/onedark.nvim",
    disable = true,
    config = function()
      require("themes.onedark")
    end
  }
  use {
    "projekt0n/github-nvim-theme",
    -- disable = true,
    config = function()
      require("themes.github")
    end
  }
  use {
    "folke/tokyonight.nvim",
    disable = true,
    config = function()
      vim.cmd [[colorscheme tokyonight]]
    end
  }

  --
  -- Icons
  --

  use {
    "projekt0n/circles.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"kyazdani42/nvim-tree.lua", opt = true}},
    config = function()
      require("circles").setup({icons = {empty = "", filled = "", lsp_prefix = ""}})
    end
  }

  --
  -- Code Formatter
  --

  use {
    "psf/black",
    event = "BufRead",
    ft = {"py", "pyi"},
    config = function()
      vim.cmd [[autocmd BufWrite *.py,*.pyi execute ':Black']]
    end
  }
  use {
    "andrejlevkovitch/vim-lua-format",
    event = "BufRead",
    ft = {"lua"},
    config = function()
      vim.cmd [[autocmd BufWrite *.lua call LuaFormat()]]
    end
  }
  use {
    "mhartington/formatter.nvim",
    config = function()
      require("config.formatter")
    end
  }

  --
  -- Misc
  --

  use "dag/vim-fish"
  use "tpope/vim-surround"
  use {
    "terrortylor/nvim-comment",
    event = "BufRead",
    config = function()
      require("config.comment")
    end
  }
  use {
    "windwp/nvim-autopairs",
    after = "nvim-compe",
    config = function()
      require("config.autopairs")
    end
  }
  use {
    "kyazdani42/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("config.nvimtree")
    end
  }
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("config.colorizer")
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
