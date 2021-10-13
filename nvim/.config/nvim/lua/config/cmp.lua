local lsp = require("lsp.setup")
local cmp = require("cmp")

cmp.setup({
  completion = {autocomplete = false, completeopt = "menu,menuone,noinsert"},
  documentation = {
    winhighlight = "NormalFloat:CmpDocumentation,FloatBorder:CmpDocumentationBorder",
    border = lsp.border
  },
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
        spell = "[Spell]",
        buffer = "[Buffer]",
        calc = "[Calc]",
        emoji = "[Emoji]",
        nvim_lsp = "[LSP]",
        path = "[Path]",
        look = "[Look]",
        treesitter = "[treesitter]",
        luasnip = "[LuaSnip]",
        nvim_lua = "[Lua]",
        latex_symbols = "[Latex]"
      })[entry.source.name]
      return vim_item
    end
  },
  sources = {
    {name = "nvim_lsp"}, {name = "luasnip"}, {name = "treesitter"}, {name = "nvim_lua"}, {name = "buffer"},
    {name = "spell"}, {name = "emoji"}, {name = "path"}, {name = "look"}, {name = "latex_symbols"}
  }
})
