-- tsserver/web javascript react, vue, json, html, css, yaml
local prettier = {
    formatCommand = "prettier --stdin-filepath ${INPUT}",
    formatStdin = true
}

require"lspconfig".efm.setup {
    cmd = {vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true},
    filetypes = {
        "python", "sh", "javascript", "javascriptreact", "typescript",
        "typescriptreact", "html", "css", "json", "yaml", "markdown"
    },
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
            },
            sh = {
                LintCommand = 'shellcheck -f gcc -x',
                lintFormats = {
                    '%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m',
                    '%f:%l:%c: %tote: %m'
                }
            },
            javascript = prettier,
            javascriptreact = prettier,
            typescript = prettier,
            typescriptreact = prettier,
            html = prettier,
            css = prettier,
            json = prettier,
            yaml = prettier,
            markdown = {
                formatCommand = 'pandoc -f markdown -t gfm -sp --tab-stop=2',
                formatStdin = true
            }
        }
    }
}

-- Also find way to toggle format on save
-- maybe this will help: https://superuser.com/questions/439078/how-to-disable-autocmd-or-augroup-in-vim
