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

vim.api.nvim_create_autocmd({ "BufRead" }, {
  callback = function() vim.api.nvim_command "normal bsi" end,
})

vim.api.nvim_create_autocmd({ "CursorMoved" }, {
  callback = function()
    -- if vim.v.mouse_win ~= 0 and vim.v.mouse_lnum ~= 0 and vim.v.mouse_col ~= 0 then return end
    if vim.bo.filetype ~= "neo-tree" and vim.bo.filetype ~= "alpha" then vim.api.nvim_command "normal zz" end
  end,
})
