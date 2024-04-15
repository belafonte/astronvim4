return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    local dashboard = require "alpha.themes.dashboard"
    -- customize the dashboard header
    local get_icon = require("astroui").get_icon
    dashboard.section.buttons.val = {
      dashboard.button("LDR n  ", get_icon("FileNew", 2, true) .. "New File  "),
      dashboard.button("LDR f f", get_icon("Search", 2, true) .. "Find File  "),
      dashboard.button("LDR f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
      dashboard.button("LDR f w", get_icon("WordFile", 2, true) .. "Find Word  "),
      dashboard.button("LDR f '", get_icon("Bookmarks", 2, true) .. "Bookmarks  "),
      dashboard.button("LDR S l", get_icon("Refresh", 2, true) .. "Last Session  "),
      dashboard.button("LDR f p", get_icon("Directory", 2, true) .. "Projects  "),
    }
    opts.section.header.val = {
      "█████████████████████████████████████████████",
      "   ███████████████████████████████████████",
      "     █████████                 █████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "     ████████                   ████████",
      "  ██████████████             ██████████████",
      "██████████████████         ██████████████████",
    }
    return opts
  end,
}
