require("flutter-tools").setup {
  flutter_path = "/home/kaiz/GitHub/flutter/bin/flutter",
  lsp = {
    settings = {
      showTodos = true
    }
  }
}

-- telescope extension
require("telescope").load_extension("flutter")
-- Keybinding
vim.api.nvim_set_keymap(
  "n",
  "<Leader>fr",
  ":lua require('telescope').extensions.flutter.commands()<CR>",
  {noremap = true}
)
