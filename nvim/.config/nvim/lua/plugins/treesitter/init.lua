require("nvim-treesitter.configs").setup {
  autotag = {
    enable = true
  },
  ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {"dart"}
  },
  indent = {enable = true},
  context_commentstring = {
    enable = true
  }
}