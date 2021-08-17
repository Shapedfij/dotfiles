local lsp = require("core.lsp.setup")

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

-- telescope extension
require("telescope").load_extension("flutter")

-- Keybinding
vim.api.nvim_set_keymap("n", "<Leader>fr", ":lua require('telescope').extensions.flutter.commands()<cr>",
                        {noremap = true})
