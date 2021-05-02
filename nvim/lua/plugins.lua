local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
   function(use)
		-- Packer can manage itself as an optional plugin
		use "wbthomason/packer.nvim"

		-- Native LSP
		use "neovim/nvim-lspconfig"
		use "glepnir/lspsaga.nvim"

		-- Auto Completion
		use "hrsh7th/nvim-compe"

		-- Telescope
		use "nvim-lua/popup.nvim"
		use "nvim-lua/plenary.nvim"
		use "nvim-telescope/telescope.nvim"
		use "nvim-telescope/telescope-fzy-native.nvim"

		-- Treesitter
		use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
		use "p00f/nvim-ts-rainbow"

		-- Git
		use 'tpope/vim-fugitive'
		use "lewis6991/gitsigns.nvim"

		-- Explorer
		use 'kyazdani42/nvim-tree.lua'
		use "kevinhwang91/rnvimr"

		-- Color
		use "gruvbox-community/gruvbox"

		-- Icons
		use "kyazdani42/nvim-web-devicons"

		-- Status Line
		use 'hoob3rt/lualine.nvim'

		-- Utilies Plugins
		use 'tpope/vim-surround'
		use "terrortylor/nvim-comment"
		use "windwp/nvim-autopairs"
		use 'machakann/vim-highlightedyank'
	end
)
