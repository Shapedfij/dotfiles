vim.fn.sign_define(
  "LspDiagnosticsSignError",
  {
    texthl = "LspDiagnosticsSignError",
    text = "",
    numhl = "LspDiagnosticsSignError"
  }
)
vim.fn.sign_define(
  "LspDiagnosticsSignWarning",
  {
    texthl = "LspDiagnosticsSignWarning",
    text = "",
    numhl = "LspDiagnosticsSignWarning"
  }
)
vim.fn.sign_define(
  "LspDiagnosticsSignHint",
  {
    texthl = "LspDiagnosticsSignHint",
    text = "",
    numhl = "LspDiagnosticsSignHint"
  }
)
vim.fn.sign_define(
  "LspDiagnosticsSignInformation",
  {
    texthl = "LspDiagnosticsSignInformation",
    text = "",
    numhl = "LspDiagnosticsSignInformation"
  }
)

-- LSP | LSP-saga keybinds
vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
vim.cmd("nnoremap <silent> <F2> <cmd>lua vim.lsp.buf.rename()<CR>")

-- Docs
vim.cmd("nnoremap <silent> K <cmd>vim.lsp.buf.hover()<CR>")

-- Diagnostic
vim.cmd("nnoremap <silent> <C-\\> <cmd>lua vim.lsp.diagnostic.get_all()<CR>")
vim.cmd("nnoremap <silent> <C-[> <cmd>lua vim.lsp.diagnostic.get_prev()<CR>")
vim.cmd("nnoremap <silent> <C-]> <cmd>lua vim.lsp.diagnostic.get_next()<CR>")

-- Auto Import
vim.cmd("inoremap <silent><expr> <C-Space> compe#complete()")
vim.cmd("inoremap <silent><expr> <CR>      compe#confirm('<CR>')")
vim.cmd("inoremap <silent><expr> <C-e>     compe#close('<C-e>')")
vim.cmd("inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })")
vim.cmd("inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })")

-- commented options are defaults
require("lspkind").init({})

require "lspinstall".setup() -- important

local servers = require "lspinstall".installed_servers()
for _, server in pairs(servers) do
  require "lspconfig"[server].setup {}
end
