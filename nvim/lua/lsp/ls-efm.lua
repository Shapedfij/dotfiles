require"lspconfig".efm.setup {
    cmd = {vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true},
    filetypes = {"python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            python = {
                {
                    LintCommand = "flake8 --ignore=E203, W503 --max-line-width=88 --stdin-display-name ${INPUT} -",
                    lintStdin = true,
                    lintFormats = {"%f:%l:%c: %m"}
                }, {formatCommand = "isort --quiet -", formatStdin = true},
                {formatCommand = "black --quiet -", formatStdin = true}
            }
        }
    }
}
