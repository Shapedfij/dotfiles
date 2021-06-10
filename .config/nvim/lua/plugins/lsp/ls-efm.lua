local flake8 = {
  lintCommand = "flake8 --stdin-display-name ${INPUT} -",
  lintStdin = true,
  lintFormats = {"%f=%l:%c: %m"}
}

local luafmt = {
  formatCommand = "luafmt --indent-count 2 --line-width 120 --stdin",
  formatStdin = true
}

require("lspconfig").efm.setup(
  {
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python"},
    settings = {
      rootMarkers = {".git/"},
      languages = {
        python = {flake8},
        lua = {luafmt}
      }
    }
  }
)
