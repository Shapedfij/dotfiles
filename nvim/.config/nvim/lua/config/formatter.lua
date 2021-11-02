local prettier = function()
  return {exe = "prettier", args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)}, stdin = true}
end

local isort = function()
  return {exe = "isort", args = {"-"}, stdin = true}
end

local black = function()
  return {exe = "black", args = {"-"}, stdin = true}
end

local xmllint = function()
  return {exe = "xmllint", args = {"--format", "-"}, stdin = true}
end

require("formatter").setup({
  logging = false,
  filetype = {
    typescript = {prettier},
    typescriptreact = {prettier},
    javascript = {prettier},
    javascriptreact = {prettier},
    css = {prettier},
    vue = {prettier},
    less = {prettier},
    json = {prettier},
    yaml = {prettier},
    markdown = {prettier},
    html = {prettier},
    python = {isort, black},
    xml = {xmllint},
    svg = {xmllint}
  }
})

local au = require("au")

local files = {
  "*.js",
  "*.jsx",
  "*.mjs",
  "*.ts",
  "*.tsx",
  "*.css",
  "*.less",
  "*.scss",
  "*.json",
  "*.graphql",
  "*.md",
  "*markdown",
  "*.vue",
  "*.yml",
  "*.yaml",
  "*.html",
  "*.py",
  "*.pyi",
  "*.xml",
  "*.svg"
}
local ftypes = table.concat(files, ",")

au.group("FormatAutogroup", {{"BufWritePost", ftypes, "FormatWrite"}})
