-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 500, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "auto", -- sets vim.opt.signcolumn to auto
        wrap = false, -- sets vim.opt.wrap
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      v = {
        ["<leader>i"] = { desc = "Summon ChatGPT" },
        ["<leader>ic"] = { "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
        ["<leader>ie"] = { "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
        ["<leader>ig"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
        ["<leader>it"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
        ["<leader>ik"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
        ["<leader>id"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
        ["<leader>ia"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
        ["<leader>io"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
        ["<leader>is"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
        ["<leader>if"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
        ["<leader>ix"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
        ["<leader>ir"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
        ["<leader>il"] = {
          "<cmd>ChatGPTRun code_readability_analysis<CR>",
          desc = "Code Readability Analysis",
        },
      },
      n = {
        -- second key is the lefthand side of the map
        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bD"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Pick to close",
        },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        ["<Leader>b"] = { desc = "Buffers" },

        -- MANAGE PACKAGE DEPS
        ["<leader>pd"] = { desc = "NPM Packages" },
        ["<leader>pdl"] = { "<cmd>lua require('package-info').show()<cr>", desc = "Show Latest Version" },
        ["<leader>pdd"] = { "<cmd>lua require('package-info').delete()<cr>", desc = "Delete Package" },
        ["<leader>pdu"] = { "<cmd>lua require('package-info').change_version()<cr>", desc = "Change Package Version" },
        ["<leader>pdi"] = { "<cmd>lua require('package-info').install()<cr>", desc = "Install new Package" },

        ["<M-Up>"] = { "<cmd>resize +2<cr>", desc = "Increase window height" },
        ["<M-Down>"] = { "<cmd>resize -2<cr>", desc = "Decrease window height" },
        ["<M-Left>"] = { "<cmd>vertical resize +2<cr>", desc = "Decrease window width" },
        ["<M-Right>"] = { "<cmd>vertical resize -2<cr>", desc = "Increase window width" },

        ["<leader>i"] = { desc = "Summon ChatGPT" },
        ["<leader>ii"] = { "<cmd>ChatGPTCompleteCode<CR>", desc = "Complete Code" },
        ["<leader>ic"] = { "<cmd>ChatGPT<CR>", desc = "ChatGPT" },
        ["<leader>ie"] = { "<cmd>ChatGPTEditWithInstruction<CR>", desc = "Edit with instruction" },
        ["<leader>ig"] = { "<cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
        ["<leader>it"] = { "<cmd>ChatGPTRun translate<CR>", desc = "Translate" },
        ["<leader>ik"] = { "<cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
        ["<leader>id"] = { "<cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
        ["<leader>ia"] = { "<cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
        ["<leader>io"] = { "<cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
        ["<leader>is"] = { "<cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
        ["<leader>if"] = { "<cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
        ["<leader>ix"] = { "<cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
        ["<leader>ir"] = { "<cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
        ["<leader>il"] = {
          "<cmd>ChatGPTRun code_readability_analysis<CR>",
          desc = "Code Readability Analysis",
        },

        -- [[ ["<leader>Q"] = {
        --   function()
        --     require("astronvim.utils.buffer").close_all()
        --     vim.cmd "q!"
        --   end,
        --   desc = "Quit All",
        -- }, ]]

        ["<leader>bv"] = {
          "<cmd>silent! windo if winnr('$') > 1 | execute 'bdelete ' . join(filter(range(1, bufnr('$')), 'bufwinnr(v:val) < 0')) | endif<CR>",
          desc = "Close Buffers beside open ones",
        },

        -- Save All
        ["<leader>W"] = { "<cmd>wa<cr>", desc = "Save All" },
        -- better buffer navigation
        -- ["]b"] = false,
        -- ["[b"] = false,
        --
        -- ["<S-l>"] = {
        --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        --   desc = "Next buffer",
        -- },
        -- ["<S-h>"] = {
        --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        --   desc = "Previous buffer",
        -- },

        -- buffer switching
        ["<Tab>"] = {
          function()
            if #vim.t.bufs > 1 then
              require("telescope.builtin").buffers { sort_mru = true, ignore_current_buffer = true }
              -- else
              --   astrocore.notify "No other buffers open"
            end
          end,
          desc = "Switch Buffers",
        },
        -- ["<leader>fe"] = { "<cmd>Telescope file_browser<cr>", desc = "File explorer" },
        ["<leader>fp"] = { function() require("telescope").extensions.projects.projects {} end, desc = "Find projects" },
      },
      t = {
        -- setting a mapping to false will disable it
        -- ["<esc>"] = false,
      },
    },
  },
}
