local devIcons = require("nvim-web-devicons")

local icons = require("core.icons")
local override_icons = devIcons.get_icons()

for _, icon in pairs(override_icons) do icon.icon = icons.empty_circle end
override_icons.default_icon = {icon = icons.empty_circle}

devIcons.setup({override = override_icons, default = false})
