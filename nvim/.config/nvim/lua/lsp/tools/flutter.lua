local lsp_opts = require('lsp.opts')

require('flutter-tools').setup({
  ui = { border = 'rounded' },
  -- flutter_lookup_cmd = "dirname $(which flutter)", -- zsh/bash shell
  flutter_lookup_cmd = 'dirname (which flutter)', -- fish shell
  lsp = {
    on_attach = lsp_opts.on_attach,
    capabilities = lsp_opts.capabilities,
    settings = { showTodos = true, completeFunctionCalls = true },
  },
})

-- Auto Formate
vim.cmd([[autocmd BufWrite *.dart execute ':DartFmt']])

-- Flutter Extension
local opts = { noremap = true, silent = true }
local map = require('util').map

require('telescope').load_extension('flutter')
map('n', '<Leader>fr', ":lua require('telescope').extensions.flutter.commands()<cr>", opts)
