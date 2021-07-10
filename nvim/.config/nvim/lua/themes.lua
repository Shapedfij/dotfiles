-- Lualine
require("lualine").setup {
  options = {
    -- theme = "onedark",
    theme = "github",
    section_separators = {"", ""},
    component_separators = {"", ""},
    icons_enabled = true
  },
  sections = {
    lualine_a = {{"mode", upper = true}},
    lualine_b = {{"branch", icon = ""}},
    lualine_c = {{"filename", file_status = true}},
    lualine_x = {"encoding", "fileformat", "filetype"},
    lualine_y = {"progress"},
    lualine_z = {"location"}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {"filename"},
    lualine_x = {"location"},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

-- GitHub
require("github-theme").setup({
  themeStyle = "dark",
  -- themeStyle = "dimmed",
  -- themeStyle = "light",
  hideInactiveStatusline = true,
  darkSidebar = false,
  darkFloat = true,
  colors = {bg_statusline = "#000000"}
})

-- -- Onedark
-- require("onedark").setup({
--   hideInactiveStatusline = true,
--   darkSidebar = false,
--   darkFloat = true
-- })
