require("notify").setup({
  -- Animation style (see below for details)
  stages = "slide",

  -- Default timeout for notifications
  timeout = 700,

  -- For stages that change opacity this is treated as the highlight behind the window
  -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
  background_colour = "Normal",

  -- Icons for the different levels
  icons = {ERROR = "", WARN = "", INFO = "", DEBUG = "", TRACE = "✎"}
})
