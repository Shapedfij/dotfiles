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

-- Flutter Extension
local opts = {noremap = true, silent = true}
local map = require("util").map

require("telescope").load_extension("flutter")
map("n", "<Leader>fr", ":lua require('telescope').extensions.flutter.commands()<cr>", opts)
