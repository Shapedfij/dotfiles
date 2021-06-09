local utils = require("utils")

utils.define_augroups(
  {
    -- Yank Highlighting
    _general_settings = {
      {
        "TextYankPost",
        "*",
        "lua require('vim.highlight').on_yank({higroup = 'Search', timeout = 100})"
      }
    },
    _markdown = {
      {"FileType", "markdown", "setlocal wrap"},
      {"FileType", "markdown", "setlocal spell"}
    },
    -- Auto Formaters
    _auto_formatters = {
      -- {"BufWritePre", "*", "lua vim.lsp.buf.formatting_sync(nil, 1000)"},
      {"BufWritePre", "*.py", "execute ':Black'"},
      {"BufWritePre", "*.dart", "execute ':DartFmt'"},
      {
        "BufWritePost",
        "*.lua,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*markdown,*.vue,*.yml,*.yaml,*.html",
        "FormatWrite"
      }
    }
  }
)
