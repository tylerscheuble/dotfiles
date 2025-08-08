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
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {
      -- see `:h vim.filetype.add` for usage
      extension = {
        foo = "fooscript",
      },
      filename = {
        [".foorc"] = "fooscript",
      },
      pattern = {
        [".*/etc/foo/.*"] = "fooscript",
      },
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
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
      n = {
        -- second key is the lefthand side of the map
        -- navigate buffer tabs
        ["]b"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        ["[b"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        -- mappings seen under group name "Buffer"
        ["<Leader>bd"] = {
          function()
            require("astroui.status.heirline").buffer_picker(
              function(bufnr) require("astrocore.buffer").close(bufnr) end
            )
          end,
          desc = "Close buffer from tabline",
        },
        -- ChatGPT
        ["<leader>a"] = { name = "ChatGPT" },
        ["<leader>ac"] = { "<Cmd>ChatGPT<CR>", desc = "Open interactive chat" },
        ["<leader>aa"] = { "<Cmd>ChatGPTActAs<CR>", desc = "Open with prompt selection" },
        ["<leader>ae"] = { "<Cmd>ChatGPTEditWithInstructions<CR>", desc = "Edit code with instructions" },
        -- ChatGPT run commands
        ["<leader>ar"] = { name = "Run action" },
        ["<leader>arg"] = { "<Cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
        ["<leader>art"] = { "<Cmd>ChatGPTRun translate<CR>", desc = "Translate" },
        ["<leader>ark"] = { "<Cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
        ["<leader>ard"] = { "<Cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
        ["<leader>ara"] = { "<Cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
        ["<leader>aro"] = { "<Cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
        ["<leader>ars"] = { "<Cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
        ["<leader>arf"] = { "<Cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
        ["<leader>arx"] = { "<Cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
        ["<leader>arr"] = { "<Cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
        ["<leader>arl"] = { "<Cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },
      },
      v = {
        -- ChatGPT, visual mode edition
        ["<leader>a"] = { name = "ChatGPT" },
        ["<leader>ae"] = { "<Cmd>ChatGPTEditWithInstructions<CR>", desc = "Edit code with instructions" },
        ["<leader>ar"] = { name = "Run action" },
        ["<leader>arg"] = { "<Cmd>ChatGPTRun grammar_correction<CR>", desc = "Grammar Correction" },
        ["<leader>art"] = { "<Cmd>ChatGPTRun translate<CR>", desc = "Translate" },
        ["<leader>ark"] = { "<Cmd>ChatGPTRun keywords<CR>", desc = "Keywords" },
        ["<leader>ard"] = { "<Cmd>ChatGPTRun docstring<CR>", desc = "Docstring" },
        ["<leader>ara"] = { "<Cmd>ChatGPTRun add_tests<CR>", desc = "Add Tests" },
        ["<leader>aro"] = { "<Cmd>ChatGPTRun optimize_code<CR>", desc = "Optimize Code" },
        ["<leader>ars"] = { "<Cmd>ChatGPTRun summarize<CR>", desc = "Summarize" },
        ["<leader>arf"] = { "<Cmd>ChatGPTRun fix_bugs<CR>", desc = "Fix Bugs" },
        ["<leader>arx"] = { "<Cmd>ChatGPTRun explain_code<CR>", desc = "Explain Code" },
        ["<leader>arr"] = { "<Cmd>ChatGPTRun roxygen_edit<CR>", desc = "Roxygen Edit" },
        ["<leader>arl"] = { "<Cmd>ChatGPTRun code_readability_analysis<CR>", desc = "Code Readability Analysis" },

      },
      t = {
        -- ["<leader><esc>"] = { "<C-\\><C-n>", desc = "Enter normal mode" },
      },
    },
  },
}
