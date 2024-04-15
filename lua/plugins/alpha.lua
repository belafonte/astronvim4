return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- customize the dashboard header
    -- local dashboard = require "alpha.themes.dashboard"
    -- local button = require("astrocore").
    -- dashboard.section.buttons.val = {
    --   button("LDR n", "  New File  "),
    --   button("LDR f f", "  Find File  "),
    --   button("LDR f o", "󰈙  Recents  "),
    --   button("LDR f w", "󰈭  Find Word  "),
    --   button("LDR f '", "  Bookmarks  "),
    --   button("LDR S f", "  Sessions  "),
    --   button("LDR fp", "  Projects  "),
    -- }
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
-- return {
--   "goolord/alpha-nvim",
--   opts = function()
--     local dashboard = require "alpha.themes.dashboard"
--     local button = require("astrocore").alpha_button
--     dashboard.section.buttons.val = {
--       button("LDR n", "  New File  "),
--       button("LDR f f", "  Find File  "),
--       button("LDR f o", "󰈙  Recents  "),
--       button("LDR f w", "󰈭  Find Word  "),
--       button("LDR f '", "  Bookmarks  "),
--       button("LDR S f", "  Sessions  "),
--       button("LDR fp", "  Projects  "),
--     }
--
--     return dashboard
--   end,
-- }
