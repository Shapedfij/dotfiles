local lsp = require("lsp.setup")

require("flutter-tools").setup({
  ui = {border = lsp.border},
  -- flutter_lookup_cmd = "dirname $(which flutter)", -- zsh/bash shell
  flutter_lookup_cmd = "dirname (which flutter)", -- fish shell
  lsp = {
    on_attach = lsp.on_attach,
    capabilities = lsp.capabilities,
    settings = {showTodos = true, completeFunctionCalls = true}
  }
})

-- Auto Formate
vim.cmd [[autocmd BufWrite *.dart execute ':DartFmt']]
