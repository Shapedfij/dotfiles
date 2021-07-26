local flake8 = {
  lintCommand = "flake8 --stdin-display-name ${INPUT} -",
  lintStdin = true,
  lintFormats = {"%f=%l:%c: %m"}
}

require("lspconfig").efm.setup({
  init_options = {documentFormatting = true},
  filetypes = {"python"},
  settings = {rootMarkers = {".git/"}, languages = {python = {flake8}}}
})
