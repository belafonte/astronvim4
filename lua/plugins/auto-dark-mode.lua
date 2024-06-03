return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    update_interval = 1000,
    set_dark_mode = function()
      vim.api.nvim_set_option("background", "dark")
      vim.fn.system 'kitten themes "Everforest Dark Medium"'

      -- local command = "/opt/homebrew/bin/kitty @ set-colors -a -c "
      --   .. vim.fn.expand "$HOME"
      --   .. "/.config/kitty/themes/everforest_dark_medium.conf"

      -- vim.api.nvim_exec("! " .. command, true)
      -- vim.fn.system(command)
      -- local dark_theme_path = vim.fn.expand "$HOME" .. "/.config/kitty/themes/everforest_dark_medium.conf"
      -- setKittyColors(dark_theme_path)

      -- local command =
      --   "/opt/homebrew/bin/kitty @ set-colors -a -c /Users/jpistor/.config/kitty/themes/everforest_dark_medium.conf"
      -- os.execute(command)

      -- vim.cmd.colorscheme("tokyonight-moon")
    end,
    set_light_mode = function()
      vim.api.nvim_set_option("background", "light")
      vim.fn.system 'kitten themes "Everforest Light Medium"'
      -- local light_theme_path = vim.fn.expand "$HOME" .. "/.config/kitty/themes/everforest_light_medium.conf"
      -- setKittyColors(light_theme_path)

      -- local command = "/opt/homebrew/bin/kitty @ set-colors -a -c "
      --   .. vim.fn.expand "$HOME"
      --   .. "/.config/kitty/themes/everforest_light_medium.conf"
      --
      -- vim.fn.system(command)
      -- vim.api.nvim_exec("! " .. command, true)
      -- local command =
      --   "/opt/homebrew/bin/kitty @ set-colors -a -c /Users/jpistor/.config/kitty/themes/everforest_light_medium.conf"
      -- os.execute(command)

      -- vim.cmd.colorscheme("tokyonight-day")
    end,
  },

  config = function(_, opts) require("auto-dark-mode").setup(opts) end,
  init = function(_) require("auto-dark-mode").init() end,
}
