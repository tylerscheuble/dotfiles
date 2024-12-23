-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.quickfix.nvim-bqf" },
  -- { 
  --   import = "astrocommunity.test.vim-test",
  --   config = function(_, opts)
  --     opts.options.g["test#strategy"] = "toggleterm"
  --     opts.options.g["test#python#runner"] = "pytest"
  --   end,
  -- },
  -- { import = "astrocommunity.indent.indent-tools-nvim" },
  -- { import = "astrocommunity.register.nvim-neoclip-lua" },
  { import = "astrocommunity.terminal-integration/vim-tpipeline" },
  -- { import = "astrocommunity.code-runner.molten-nvim" },
  -- {
  --   "vimpostor/vim-tpipeline",
  --   init = function()
  --     -- Fill the center tmux status bar
  --     vim.g.tpipeline_fillcentre = 1
  --   end,
  -- },
  { import = "astrocommunity.editing-support.chatgpt-nvim" },
  {
    "jackMort/ChatGPT.nvim",
    opts = {
      openai_params = {
        model = "gpt-4",
      },
    },
  },
  { import = "astrocommunity.editing-support.cutlass-nvim" },
  {
    "gbprod/cutlass.nvim",
    opts = {
      cut_key = "x",
    }
  },
  { import = "astrocommunity.note-taking.neorg" },
  -- octo-nvim conflicts with <LEADER>O (I use it for oil)
  -- { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.openingh-nvim" },
  -- { import = "astrocommunity.code-runner.vim-slime" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
--  {
--    "nvim-neorg/neorg",
--    dependencies = {
--      "nvim-neorg/neorg-telescope",
--    },
--    branch = "main",
--    opts = {
--      load = {
--        ["core.integrations.telescope"] = {},
--      },
--    },
--  }
  -- Sadly the minimap does not seem to work well
  { import = "astrocommunity.split-and-window.minimap-vim" },
}
