local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
  execute "packadd packer.nvim"
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
  function(use)
    -- Packer can manage itself as an optional plugin
    use "wbthomason/packer.nvim"

    -- Native LSP
    use "neovim/nvim-lspconfig"
    use "onsails/lspkind-nvim"
    use "kabouzeid/nvim-lspinstall"
    use "mattn/efm-langserver"

    -- Auto Completion
    use "hrsh7th/nvim-compe"

    -- Telescope
    use "nvim-lua/popup.nvim"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-fzy-native.nvim"

    -- Treesitter
    use {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"}

    -- Git
    use "tpope/vim-fugitive"
    use "lewis6991/gitsigns.nvim"

    -- Explorer
    use "kyazdani42/nvim-tree.lua"
    use "kevinhwang91/rnvimr"

    -- Color
    use {"npxbr/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}

    -- Icons
    use "kyazdani42/nvim-web-devicons"

    -- Status Line
    use "hoob3rt/lualine.nvim"

    -- Formatter
    use "mhartington/formatter.nvim"
    use {"prettier/vim-prettier", run = "yarn install"}

    -- Utilies Plugins
    use "norcalli/nvim-colorizer.lua"
    use "tpope/vim-surround"
    use "terrortylor/nvim-comment"
    use "windwp/nvim-autopairs"
  end
)
