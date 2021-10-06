-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = true
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/kaiz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/kaiz/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/kaiz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/kaiz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/kaiz/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["awesome-flutter-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/awesome-flutter-snippets"
  },
  black = {
    config = { "\27LJ\2\nP\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0001autocmd BufWrite *.py,*.pyi execute ':Black'\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/black"
  },
  ["circles.nvim"] = {
    config = { "\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nicons\1\0\0\1\0\3\nempty\b\15lsp_prefix\b\vfilled\b\nsetup\fcircles\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/circles.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-buffer"
  },
  ["cmp-emoji"] = {
    after_files = { "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-emoji/after/plugin/cmp_emoji.lua" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.vim" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/cmp-vsnip"
  },
  ["dart-vim-plugin"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/dart-vim-plugin"
  },
  ["flutter-tools.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\23setup_flutter_tool\blsp\frequire\0" },
    load_after = {
      ["telescope.nvim"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/flutter-tools.nvim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.formatter\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/friendly-snippets"
  },
  ["github-nvim-theme"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/github-nvim-theme"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["lua-dev.nvim"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\21load_sumneko_lua\tlsp.\frequire\0" },
    load_after = {},
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.autopairs\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.colorizer\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19config.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    after = { "nvim-cmp", "lua-dev.nvim" },
    config = { "\27LJ\2\nB\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0B\1\1\1K\0\1\0\rload_efm\nsetup\blsp\frequire\0" },
    loaded = true,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "spellsitter.nvim" },
    loaded = true,
    only_config = true
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["spellsitter.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23config.spellsitter\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/spellsitter.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    after = { "flutter-tools.nvim" },
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/telescope.nvim"
  },
  ["vim-fish"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/vim-fish"
  },
  ["vim-fugitive"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.fugitive\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-kitty"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/vim-kitty"
  },
  ["vim-lua-format"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0,autocmd BufWrite *.lua call LuaFormat()\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/vim-lua-format"
  },
  ["vim-startuptime"] = {
    config = { "\27LJ\2\nn\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\21:StartupTime<CR>\15<Leader>st\6n\bmap\tutil\frequire\0" },
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/kaiz/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22config.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: vim-startuptime
time([[Config for vim-startuptime]], true)
try_loadstring("\27LJ\2\nn\0\0\a\0\a\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1K\0\1\0\1\0\1\fnoremap\2\21:StartupTime<CR>\15<Leader>st\6n\bmap\tutil\frequire\0", "config", "vim-startuptime")
time([[Config for vim-startuptime]], false)
-- Config for: circles.nvim
time([[Config for circles.nvim]], true)
try_loadstring("\27LJ\2\nq\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nicons\1\0\0\1\0\3\nempty\b\15lsp_prefix\b\vfilled\b\nsetup\fcircles\frequire\0", "config", "circles.nvim")
time([[Config for circles.nvim]], false)
-- Config for: vim-fugitive
time([[Config for vim-fugitive]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.fugitive\frequire\0", "config", "vim-fugitive")
time([[Config for vim-fugitive]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20config.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-lspinstall ]]

-- Config for: nvim-lspinstall
try_loadstring("\27LJ\2\nB\0\0\3\0\4\0\b6\0\0\0'\2\1\0B\0\2\0029\1\2\0B\1\1\0019\1\3\0B\1\1\1K\0\1\0\rload_efm\nsetup\blsp\frequire\0", "config", "nvim-lspinstall")

vim.cmd [[ packadd nvim-cmp ]]

-- Config for: nvim-cmp
try_loadstring("\27LJ\2\n*\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\15config.cmp\frequire\0", "config", "nvim-cmp")

vim.cmd [[ packadd spellsitter.nvim ]]

-- Config for: spellsitter.nvim
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23config.spellsitter\frequire\0", "config", "spellsitter.nvim")

time([[Sequenced loading]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType py ++once lua require("packer.load")({'black'}, { ft = "py" }, _G.packer_plugins)]]
vim.cmd [[au FileType pyi ++once lua require("packer.load")({'black'}, { ft = "pyi" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'vim-lua-format', 'lua-dev.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType dart ++once lua require("packer.load")({'flutter-tools.nvim'}, { ft = "dart" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertCharPre * ++once lua require("packer.load")({'friendly-snippets', 'awesome-flutter-snippets'}, { event = "InsertCharPre *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'cmp-emoji', 'cmp-buffer', 'cmp-path', 'vim-vsnip', 'cmp-vsnip'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'nvim-comment', 'vim-lua-format', 'gitsigns.nvim', 'black'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'telescope.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
