local function define_augroups(definitions) -- {{{1
  -- Create autocommand groups based on the passed definitions
  --
  -- The key will be the name of the group, and each definition
  -- within the group should have:
  --    1. Trigger
  --    2. Pattern
  --    3. Text
  -- just like how they would normally be defined from Vim itself
  for group_name, definition in pairs(definitions) do
    vim.cmd("augroup " .. group_name)
    vim.cmd("autocmd!")

    for _, def in pairs(definition) do
      local command = table.concat(vim.tbl_flatten {"autocmd", def}, " ")
      vim.cmd(command)
    end

    vim.cmd("augroup END")
  end
end

define_augroups(
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
      {"BufWritePre", "*.py", "lua vim.lsp.buf.formatting_sync(nil, 1000)"},
      {
        "BufWritePost",
        "*.lua,*.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*markdown,*.vue,*.yml,*.yaml,*.html",
        "FormatWrite"
      }
    }
  }
)
