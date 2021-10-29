local cmp = require("cmp")
local luasnip = require("luasnip")

local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

cmp.setup({
  completion = {autocomplete = false, completeopt = "menu,menuone,noinsert"},
  documentation = {winhighlight = "NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder", border = "rounded"},
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<C-n>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      elseif has_words_before() then
        cmp.complete()
      else
        fallback()
      end
    end, {"i", "s"}),
    ["<C-p>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, {"i", "s"}),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-y>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true})
  },

  formatting = {
    format = function(entry, vim_item)
      -- set a name for each source
      vim_item.menu = ({
        cmp_git = "[git]",
        nvim_lua = "[lua]",
        nvim_lsp = " [LSP]",
        luasnip = " [snip]",
        path = "[path] ",
        buffer = "[buff] ",
        spell = "[spell]",
        emoji = "[emoji] "
      })[entry.source.name]
      return vim_item
    end
  },
  sources = {
    {name = "cmp_git"},
    {name = "nvim_lua"},
    {name = "nvim_lsp"},
    {name = "luasnip"},
    {name = "path"},
    {name = "spell"},
    {name = "buffer", keyword_length = 5},
    {name = "emoji"}
  },
  experimental = {native_menu = false, ghost_text = true}
})

require("cmp_git").setup({
  -- defaults
  filetypes = {"gitcommit", "markdown"},
  github = {
    issues = {
      filter = "all", -- assigned, created, mentioned, subscribed, all, repos
      limit = 100,
      state = "all" -- open, closed, all
    },
    mentions = {limit = 100}
  }
})
