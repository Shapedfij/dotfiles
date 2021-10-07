require("lualine").setup({options = {theme = "github"}})
require("github-theme").setup({
  -- theme_style = "light",
  -- theme_style = "light_default",
  -- theme_style = "dark_default",
  -- theme_style = "dimmed",
  transparent = false,
  dark_sidebar = false,
  colors = {bg_search = "green", fg_search = "black"}
})
