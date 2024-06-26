-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
-- vim.filetype.add {
--   extension = {
--     foo = "fooscript",
--   },
--   filename = {
--     ["Foofile"] = "fooscript",
--   },
--   pattern = {
--     ["~/%.config/foo/.*"] = "fooscript",
--   },
-- }

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
  callback = function() vim.opt.relativenumber = false end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
  callback = function() vim.opt.relativenumber = true end,
})

vim.api.nvim_create_autocmd({ "BufRead", "BufEnter" }, {
  callback = function()
    if vim.bo.filetype ~= "neo-tree" and vim.bo.filetype ~= "alpha" then require("astrocore.buffer").sort "bufnr" end
  end,
})

local function set_scroll_off()
  -- local height = vim.api.nvim_win_get_height(0)
  vim.o.scrolloff = 9999
end

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "WinNew", "VimResized" }, {
  callback = function() set_scroll_off() end,
})
