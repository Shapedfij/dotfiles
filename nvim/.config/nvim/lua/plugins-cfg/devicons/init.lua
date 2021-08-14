local devIcons = require("nvim-web-devicons")

local override_icons = devIcons.get_icons()
for _, icon in pairs(override_icons) do icon.icon = "○" end

devIcons.setup({override = override_icons, default = true})
