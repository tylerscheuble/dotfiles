-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.quickfix.nvim-bqf" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.test.neotest" },
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
    }
  },
  { import = "astrocommunity.fuzzy-finder.snacks-picker" },
  { import = "astrocommunity.ai.opencode-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.openingh-nvim" },
  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },
  { import = "astrocommunity.file-explorer.yazi-nvim" },
}
