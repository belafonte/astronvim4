-- local Terminal = require("toggleterm.terminal").Terminal
-- local git = require "astronvim.utils.git"
-- local name = git.cmd({ "rev-parse", "--show-toplevel" }, ...)

-- local cmd = string.format("tmux new -A -s %s", name)
-- local cmd = "tmux new -A s session-name"

-- local function set_tmux_session_name(...)
--   local name = git.cmd({ "rev-parse", "--show-toplevel" }, ...)
--   local cmd = string.format("tmux new -s %s", name)
--   return cmd
-- end
--
-- -- function get_tmux_session_name()
-- --   local name = git.cmd({ "rev-parse", "--show-toplevel" }, ...)
-- --   return name
-- -- end
--
-- local tmux = Terminal:new { cmd = "ls", direction = "float" }
--
-- function _tmux_toggle() tmux:toggle() end
--
-- vim.api.nvim_set_keymap(
--   "n",
--   "<leader>tm",
--   "<cmd>lua _tmux_toggle()<CR>",
--   { noremap = true, silent = true, desc = "Open tmux" }
-- )

return {

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      -- open_mapping = [[<c-\>]],
      start_in_insert = true,
      persist_mode = false,
      shade_terminals = false,
      terminal_mappings = false, -- whether or not the open mapping applies in the opened terminals
      shell = "/opt/homebrew/bin/fish",
    },
  },
}
