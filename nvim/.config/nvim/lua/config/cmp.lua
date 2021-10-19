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
        nvim_lsp = "   (LSP)",
        luasnip = "   (Snippet)",
        nvim_lua = " (Lua)",
        path = " (Folder) ",
        buffer = "﬘ (Buffer) ",
        spell = "暈(Spell)",
        emoji = "ﲃ (Emoji) "
      })[entry.source.name]
      return vim_item
    end
  },
  sources = {
    {name = "nvim_lsp"}, {name = "luasnip"}, {name = "nvim_lua"}, {name = "path"}, {name = "buffer"}, {name = "spell"},
    {name = "emoji"}
  }
})
