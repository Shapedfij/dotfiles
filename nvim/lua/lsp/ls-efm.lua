DATA_PATH = vim.fn.stdpath('data')

require"lspconfig".efm.setup {
    cmd = {DATA_PATH .. "/lspinstall/efm/efm-langserver"},
    init_options = {documentFormatting = true},
    filetypes = {"lua", "python"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {
                {
                    formatCommand = "lua-format -i --column-limit=120",
                    formatStdin = true
                }
            },
						python={
								{
										LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
										lintStdin = true,
										lintFormats = {"%f:%l:%c: %m"}
								},
								{formatCommand = "black --quiet -", formatStdin = true},
								{formatCommand = "isort --quiet -", formatStdin = true},
						},
				}
		}
}

-- -- sh
-- local shellcheck = {
--     LintCommand = 'shellcheck -f gcc -x',
--     lintFormats = {'%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m'}
-- }
--
-- -- tsserver/web javascript react, vue, json, html, css, yaml
-- local prettier = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}
--
-- -- Markdown
-- local markdownPandocFormat = {formatCommand = 'pandoc -f markdown -t gfm -sp --tab-stop=2', formatStdin = true}
--
-- require("lspconfig").efm.setup {
--     -- cmd = {vim.fn.stdpath('data') .. "/lspinstall/efm/efm-langserver"},
--     init_options = {documentFormatting = true},
--     filetypes = {"lua", "python", "javascriptreact", "javascript", "typescript","typescriptreact","sh", "html", "css", "json", "yaml", "markdown", "vue"},
--     settings = {
--         rootMarkers = {".git/"},
--         languages = {
--             -- python = {flake8, black, isort},
--             lua = luaFormat,
-- 						--             sh = shellcheck,
-- 						--             javascript = prettier,
-- 						--             javascriptreact = prettier,
-- 						-- typescript = prettier,
-- 						-- typescriptreact = prettier,
-- 						--             html = {prettier},
-- 						--             css = {prettier},
-- 						--             json = {prettier},
-- 						--             yaml = {prettier},
-- 						--             markdown = {markdownPandocFormat}
--         }
--     }
-- }
