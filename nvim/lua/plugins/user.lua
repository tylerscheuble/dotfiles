-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
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
  {"fladson/vim-kitty"},
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    opts = {
      -- Use shift-tab to toggle the floating terminal
      open_mapping = [[<S-Tab>]],
    },
  },
  {
    "terrastruct/d2-vim",
    ft = "d2",
  },
}
