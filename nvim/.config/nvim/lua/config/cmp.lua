local cmp = require("cmp")

cmp.setup({
  completion = {autocomplete = true, completeopt = "menu,menuone,noinsert"},
  documentation = {winhighlight = "NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder", border = "rounded"},
  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end
  },
  mapping = {
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.close(),
    ["<C-n>"] = cmp.mapping(cmp.mapping.select_next_item(), {"i", "s"}),
    ["<C-p>"] = cmp.mapping(cmp.mapping.select_prev_item(), {"i", "s"}),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-y>"] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Replace, select = true})
  },

  formatting = {
    format = function(entry, vim_item)
      -- set a name for each source
      vim_item.menu = ({
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
