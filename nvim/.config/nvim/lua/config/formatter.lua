local prettierFmt = function()
  return {exe = "prettier", args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0)}, stdin = true}
end

require("formatter").setup({
  logging = false,
  filetype = {
    typescript = {prettierFmt},
    typescriptreact = {prettierFmt},
    javascript = {prettierFmt},
    javascriptreact = {prettierFmt},
    css = {prettierFmt},
    vue = {prettierFmt},
    less = {prettierFmt},
    json = {prettierFmt},
    yaml = {prettierFmt},
    markdown = {prettierFmt},
    html = {prettierFmt}
  }
})

vim.cmd [[
augroup Format
    autocmd!
    autocmd BufWritePost *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*markdown,*.vue,*.yml,*.yaml,*.html FormatWrite
augroup END
]]
