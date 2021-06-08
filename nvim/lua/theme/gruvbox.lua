-- Gruvbox Flat
vim.g.gruvbox_transparent = true
vim.g.gruvbox_italic_functions = true
vim.g.gruvbox_dark_sidebar = true
vim.g.gruvbox_dark_float = false
vim.g.gruvbox_colors = {hint = "orange"}
vim.cmd [[colorscheme gruvbox-flat]]

-- lsp diagnostics signs
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
