-- Lualine
require("lualine").setup {
  options = {
    -- theme = "onedark",
    theme = "github",
    -- theme = "tokyonight",
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
  inactive_sections = {lualine_a = {}, lualine_b = {}, lualine_c = {}, lualine_x = {}, lualine_y = {}, lualine_z = {}},
  extensions = {"quickfix", "fugitive", "nvim-tree"}
}
-- Tokyonight
-- vim.cmd [[colorscheme tokyonight]]
--
--
--
-- Onedark
-- require("onedark").setup({hideInactiveStatusline = true, darkFloat = false, darkSidebar = false})
--
--
--
-- Github
require("github-theme").setup({
  themeStyle = "dimmed",
  hideInactiveStatusline = true,
  darkFloat = false,
  darkSidebar = false,
  msgAreaStyle = "italic"
})
