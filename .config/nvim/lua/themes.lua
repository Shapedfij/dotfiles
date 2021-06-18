-- Onedark
-- vim.g.onedark_hide_inactive_statusline = false
-- require("onedark").setup({darkSidebar = false})
-- Gruvbox-Flat
-- vim.g.gruvbox_hide_inactive_statusline = true
-- vim.cmd [[colorscheme gruvbox-flat]]
-- Lualine
require("lualine").setup {
    options = {
        theme = "onedark",
        -- theme = "gruvbox-flat",
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
    }
}
