return {
  {
    "loctvl842/monokai-pro.nvim",
    name="monokai-pro",
    config = function()
      require("monokai-pro").setup({
        filter="spectrum",
      })
    end,
  },
  {"fladson/vim-kitty"}
  -- {
    -- "hrsh7th/nvim-cmp",
    -- dependencies = {
    --   "zbirenbaum/copilot-cmp",
    --   name = "copilot_cmp",
    --   dependencies = { 
    -- "zbirenbaum/copilot.lua",
    -- name = "copilot",
    -- cmd = "Copilot",
    -- event = "InsertEnter",
    -- config = function()
    --   require("copilot").setup({
    --     suggestion = { auto_trigger = true },
    --     panel = { auto_refresh = true },
    --   })
    -- end,
    -- },
    -- opts = {},
    -- },
    -- opts = function(_, opts) table.insert(opts.sources, { name = "copilot" }) end,
  -- },
}
