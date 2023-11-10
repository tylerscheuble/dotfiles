return {
  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        " █████  ███████ ████████ ██████   ██████",
        "██   ██ ██         ██    ██   ██ ██    ██",
        "███████ ███████    ██    ██████  ██    ██",
        "██   ██      ██    ██    ██   ██ ██    ██",
        "██   ██ ███████    ██    ██   ██  ██████",
        " ",
        "    ███    ██ ██    ██ ██ ███    ███",
        "    ████   ██ ██    ██ ██ ████  ████",
        "    ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "    ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "    ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    opts = {
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
