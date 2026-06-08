-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {
  -- snacks-picker disables telescope, but telescope-file-browser depends on it
  { "nvim-telescope/telescope.nvim", enabled = true },
  {
    "loctvl842/monokai-pro.nvim",
    name="monokai-pro",
config = function()
      require("monokai-pro").setup({
        filter="spectrum",
      })
    end,
  },
  {"fladson/vim-kitty"},
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    opts = {
      -- Use shift-tab to toggle the floating terminal
      open_mapping = [[<S-Tab>]],
      direction = "float",
      auto_scroll = false,
    },
  },
  {
    "terrastruct/d2-vim",
    ft = "d2",
  },
  {
    "oug-t/difi.nvim",
    event = "VeryLazy",
    keys = {
        -- Context-aware: Syncs with CLI target (e.g. main) or defaults to HEAD
        { "<leader>df", ":Difi<CR>", desc = "Toggle Difi" },
    },
  },
}
-- { 
--   "nvim-focus/focus.nvim",
--   config = function()
--     require("focus").setup({
--       split = {
--         tmux = true,
--       },
--       ui = {
--         absolutenumber_unfocussed = true,
--       },
--     })
--   end,
-- },
