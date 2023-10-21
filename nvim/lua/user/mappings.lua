-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- Mapping to toggle floating term by double tapping leader added for convienience
    ["<leader><leader>"] = { "<Cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },
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
    -- We make many of these commands also available in visual mode
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
    ["<leader><esc>"] = { "<C-\\><C-n>", desc = "Enter normal mode" }
  },
}
