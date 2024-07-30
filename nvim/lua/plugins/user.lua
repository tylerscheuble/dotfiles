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
    "folke/which-key.nvim",
    opts = function(_, opts)
      opts.triggers_blacklist = {
        -- list of mode / prefixes that should never be hooked by WhichKey
        -- this is mostly relevant for keymaps that start with a native binding
        -- (tyler): I'm not sure what this does precisely, but it seems to be necessary for 
        -- cutlass to work. See: https://github.com/gbprod/cutlass.nvim/issues/20#issuecomment-1713572459
        i = { "j", "k", "d", "D", "s", "S" },
        v = { "j", "k", "d", "D", "s", "S" },
        n = { "d", "D", "s", "S" },
      }
      return opts
    end,
  },
}
