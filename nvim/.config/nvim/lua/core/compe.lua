local lsp = require("core.lsp.setup")

-- Compe setup
require("compe").setup {
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = "enable",
  throttle_time = 80,
  source_timeout = 200,
  resolve_timeout = 800,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = {
    border = lsp.border,
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 80,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1
  },

  source = {
    path = {kind = "   (Path)"},
    buffer = {kind = "   (Buffer)"},
    calc = {kind = "   (Calc)"},
    vsnip = {kind = "   (Snippet)"},
    nvim_lsp = {kind = "   (LSP)"},
    nvim_lua = true,
    spell = {kind = "   (Spell)"},
    tags = false,
    vim_dadbod_completion = true,
    emoji = {kind = " ﲃ  (Emoji)"}
  }
}

local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
  local col = vim.fn.col(".") - 1
  if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
    return true
  else
    return false
  end
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn.call("vsnip#available", {1}) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn["compe#complete"]()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

local map = require("util").map
local opts = {expr = true}
map("i", "<Tab>", "v:lua.tab_complete()", opts)
map("s", "<Tab>", "v:lua.tab_complete()", opts)
map("i", "<S-Tab>", "v:lua.s_tab_complete()", opts)
map("s", "<S-Tab>", "v:lua.s_tab_complete()", opts)

vim.cmd("inoremap <silent><expr> <C-Space> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR> compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e> compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f> compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d> compe#scroll({ 'delta': -4 })")
